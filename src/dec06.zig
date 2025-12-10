const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

fn removeSpaces(allocator: Allocator, count: u4, input: []const u8) ![]const u8 {
    const replace = try allocator.alloc(u8, count);
    defer allocator.free(replace);

    for (replace) |*replace_ptr| {
        replace_ptr.* = ' ';
    }

    const matches = std.mem.count(u8, replace, input);
    const new_len = input.len - (matches * count) + (matches);
    var output = try allocator.alloc(u8, new_len);

    _ = std.mem.replace(u8, input, replace, " ", output[0..]);

    return output;
}

fn part_1(allocator: Allocator, input: []const u8) !u256 {
    const trim = std.mem.trim(u8, input, " \t\n\r");
    const removedFiveSpaces = try removeSpaces(allocator, 5, trim);
    defer allocator.free(removedFiveSpaces);

    const removedFourSpaces = try removeSpaces(allocator, 4, removedFiveSpaces);
    defer allocator.free(removedFourSpaces);

    const removedThreeSpaces = try removeSpaces(allocator, 3, removedFourSpaces);
    defer allocator.free(removedThreeSpaces);

    const removedTwoSpaces = try removeSpaces(allocator, 2, removedThreeSpaces);
    defer allocator.free(removedTwoSpaces);

    const lines = util.split_lines(allocator, removedTwoSpaces);
    defer lines.deinit();

    var arrays = try allocator.alloc(std.array_list.Managed([]const u8), lines.items.len);
    defer allocator.free(arrays);

    for (lines.items, 0..) |line, index| {
        arrays[index] = std.array_list.Managed([]const u8).init(allocator);
        const split = std.mem.trim(u8, line, " \t\n\r");
        var splits = std.mem.splitScalar(u8, split, ' ');

        while (splits.next()) |item| {
            try arrays[index].append(item);
        }
    }

    defer {
        for (arrays) |list| {
            list.deinit();
        }
    }

    var result: u256 = 0;
    for (0..arrays[0].items.len) |index| {
        const op = arrays[arrays.len - 1].items[index][0];

        const nums = try allocator.alloc(u16, arrays.len - 1);
        defer allocator.free(nums);

        for (arrays[0..(arrays.len - 1)], 0..) |array, line| {
            const num: u16 = try std.fmt.parseInt(u16, array.items[index], 10);
            nums[line] = num;
        }

        var subtotal: u256 = nums[0];
        for (nums[1..]) |num| {
            subtotal = if (op == '+') subtotal + num else subtotal * num;
        }

        result = result + subtotal;
    }

    // for (arrays[0].items, arrays[1].items, arrays[2].items, arrays[3].items, arrays[4].items) |item1, item2, item3, item4, op| {
    //     const num1: u64 = try std.fmt.parseInt(u64, item1, 10);
    //     const num2: u64 = try std.fmt.parseInt(u64, item2, 10);
    //     const num3: u64 = try std.fmt.parseInt(u64, item3, 10);
    //     const num4: u64 = try std.fmt.parseInt(u64, item4, 10);
    //
    //     if (op[0] == '+') {
    //         result = result + (num1 + num2 + num3 + num4);
    //     } else {
    //         result = result + (num1 * num2 * num3 * num4);
    //     }
    // }

    return result;
}

fn part_2(allocator: Allocator, input: []const u8) !u256 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var nums = std.array_list.Managed(u16).init(allocator);
    defer nums.deinit();

    var op: u8 = lines.items[lines.items.len - 1][0];

    var result: u256 = 0;
    for (0..lines.items[0].len) |index| {
        if (lines.items[lines.items.len - 1][index] != ' ') {
            op = lines.items[lines.items.len - 1][index];
        }

        var digits = std.array_list.Managed(u8).init(allocator);
        defer digits.deinit();

        for (0..lines.items.len - 1) |lineIndex| {
            const char = lines.items[lineIndex][index];
            if (char != ' ') {
                try digits.append(char);
            }
        }

        if (index + 1 == lines.items[0].len) {
            const numStr = std.mem.trim(u8, digits.items, " \t\n\r");

            const num = try std.fmt.parseInt(u16, numStr, 10);
            try nums.append(num);
        }

        if (digits.items.len == 0 or index + 1 == lines.items[0].len) {
            var subtotal: u256 = nums.items[0];
            for (nums.items[1..]) |num| {
                subtotal = if (op == '+') subtotal + num else subtotal * num;
            }

            result = result + subtotal;
            nums.clearAndFree();
        } else {
            const numStr = std.mem.trim(u8, digits.items, " \t\n\r");

            const num = try std.fmt.parseInt(u16, numStr, 10);
            try nums.append(num);
        }
    }

    return result;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec06.txt");

    std.debug.print("December 06\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 4277556;
    const input =
        \\123 328  51 64
        \\ 45 64  387 23
        \\  6 98  215 314
        \\*   +   *   +
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 3263827;
    const input =
        \\123 328  51 64 
        \\ 45 64  387 23 
        \\  6 98  215 314
        \\*   +   *   +  
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
