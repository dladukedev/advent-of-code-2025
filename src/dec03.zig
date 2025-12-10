const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

fn get_max_joltage(allocator: Allocator, input: []const u8, length: u8) !u256 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var result: u256 = 0;
    for (lines.items) |bank| {
        var joltageBuffer = try allocator.alloc(u8, length);
        defer allocator.free(joltageBuffer);

        var searchIndex: u8 = 0;
        for (0..length) |index| {
            var foundIndex: u8 = searchIndex;
            const remainingDigits = length - index - 1;

            for (searchIndex..(bank.len - remainingDigits)) |search| {
                if (bank[search] > bank[foundIndex]) {
                    foundIndex = @intCast(search);
                }
            }

            joltageBuffer[index] = bank[foundIndex];
            searchIndex = foundIndex + 1;
        }

        const joltageCheck: []const u8 = joltageBuffer[0..length];
        const maxJoltage: u64 = try std.fmt.parseInt(u64, joltageCheck, 10);
        result = result + maxJoltage;
    }

    return result;
}

fn part_1(allocator: Allocator, input: []const u8) !u256 {
    return get_max_joltage(allocator, input, 2);
}

fn part_2(allocator: Allocator, input: []const u8) !u256 {
    return get_max_joltage(allocator, input, 12);
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec03.txt");

    std.debug.print("December 02\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 357;
    const input =
        \\987654321111111
        \\811111111111119
        \\234234234234278
        \\818181911112111
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 3121910778619;
    const input =
        \\987654321111111
        \\811111111111119
        \\234234234234278
        \\818181911112111
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
