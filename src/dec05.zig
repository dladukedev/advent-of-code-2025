const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

const Range = struct { start: u64, end: u64 };

fn part_1(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var blankIndex: u16 = 0;

    for (lines.items, 0..) |item, index| {
        if (!std.mem.eql(u8, item, "")) continue;
        blankIndex = @intCast(index);
        break;
    }

    const rangeStrings = lines.items[0..blankIndex];
    var ranges = try allocator.alloc(Range, rangeStrings.len);
    defer allocator.free(ranges);

    for (rangeStrings, 0..) |range, index| {
        var startEnd = std.mem.splitScalar(u8, range, '-');
        const startStr = std.mem.trim(u8, startEnd.first(), " \t\n\r");
        const lastStr = std.mem.trim(u8, startEnd.next().?, " \t\n\r");

        const start = try std.fmt.parseInt(u64, startStr, 10);
        const end = try std.fmt.parseInt(u64, lastStr, 10);

        ranges[index] = Range{ .start = start, .end = end };
    }

    var ingredientStrings = lines.items[(blankIndex + 1)..];
    var ingredients = try allocator.alloc(u64, ingredientStrings.len);
    defer allocator.free(ingredients);

    for (ingredientStrings, 0..) |ingredient, index| {
        ingredients[index] = try std.fmt.parseInt(u64, ingredient, 10);
    }

    var count: u64 = 0;
    for (ingredients) |ingredient| {
        for (ranges) |range| {
            if (range.start <= ingredient and range.end >= ingredient) {
                count = count + 1;
                break;
            }
        }
    }

    return count;
}

fn part_2(allocator: Allocator, input: []const u8) !u256 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var blankIndex: u16 = 0;

    for (lines.items, 0..) |item, index| {
        if (!std.mem.eql(u8, item, "")) continue;
        blankIndex = @intCast(index);
        break;
    }

    const rangeStrings = lines.items[0..blankIndex];
    var ranges = try allocator.alloc(Range, rangeStrings.len);
    defer allocator.free(ranges);

    for (rangeStrings, 0..) |range, index| {
        var startEnd = std.mem.splitScalar(u8, range, '-');
        const startStr = std.mem.trim(u8, startEnd.first(), " \t\n\r");
        const lastStr = std.mem.trim(u8, startEnd.next().?, " \t\n\r");

        const start = try std.fmt.parseInt(u64, startStr, 10);
        const end = try std.fmt.parseInt(u64, lastStr, 10);

        ranges[index] = Range{ .start = start, .end = end };
    }

    var actualRanges = std.array_list.Managed(Range).init(allocator);
    defer actualRanges.deinit();

    for (ranges) |range| {
        var tempRanges = std.array_list.Managed(Range).init(allocator);
        defer tempRanges.deinit();

        var newRange = range;
        for (actualRanges.items) |checkRange| {
            const startInRange = newRange.start <= checkRange.end and newRange.start >= checkRange.start;
            const startBeforeRange = newRange.start < checkRange.start;
            // const startAfterRange = range.start > checkRange.end;

            const endInRange = newRange.end <= checkRange.end and newRange.end >= checkRange.start;
            // const endBeforeRange = range.end < checkRange.start;
            const endAfterRange = newRange.end > checkRange.end;

            // Inside
            if (startInRange and endInRange) {
                newRange = checkRange;
                continue;
            }

            // Surround
            if (startBeforeRange and endAfterRange) {
                newRange = range;
                continue;
            }

            // Includes Start
            if (startBeforeRange and endInRange) {
                newRange = Range{ .start = newRange.start, .end = checkRange.end };
                continue;
            }

            // Includes End
            if (startInRange and endAfterRange) {
                newRange = Range{ .start = checkRange.start, .end = newRange.end };
                continue;
            }

            try tempRanges.append(checkRange);
        }

        try tempRanges.append(newRange);

        actualRanges.clearAndFree();
        for (tempRanges.items) |item| {
            try actualRanges.append(item);
        }
    }

    var count: u256 = 0;
    for (actualRanges.items) |range| {
        count = count + (range.end - range.start + 1);
    }

    return count;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec05.txt");

    std.debug.print("December 05\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 3;
    const input =
        \\3-5
        \\10-14
        \\16-20
        \\12-18
        \\
        \\1
        \\5
        \\8
        \\11
        \\17
        \\32
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 14;
    const input =
        \\3-5
        \\10-14
        \\16-20
        \\12-18
        \\
        \\1
        \\5
        \\8
        \\11
        \\17
        \\32
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
