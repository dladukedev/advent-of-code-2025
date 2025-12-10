const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

fn count_digits(input: u64) u4 {
    var check = input;
    var digits: u4 = 1;
    while (check > 0) {
        check = @divFloor(check, 10);
        if (check > 0) {
            digits = digits + 1;
        }
    }
    return digits;
}

fn part_1(input: []const u8) !u64 {
    var sequences = std.mem.splitScalar(u8, input, ',');

    var result: u64 = 0;
    while (sequences.next()) |sequence| {
        var items = std.mem.splitScalar(u8, sequence, '-');

        const startStr = std.mem.trim(u8, items.first(), " \t\n\r");
        const lastStr = std.mem.trim(u8, items.next().?, " \t\n\r");

        const start = try std.fmt.parseInt(u64, startStr, 10);
        const end = try std.fmt.parseInt(u64, lastStr, 10);

        var startNum: u64 = 0;

        const pow = @divFloor(startStr.len, 2);

        var startHalf = if (@mod(startStr.len, 2) == 1)
            std.math.pow(u64, 10, pow)
        else
            @divFloor(start, std.math.pow(u64, 10, pow));

        const multiplier = std.math.pow(u64, 10, pow + 1);
        startNum = (startHalf * multiplier) + startHalf;

        var check: u64 = 0;

        while (check <= end) {
            const digits = count_digits(startHalf);
            check = (startHalf * std.math.pow(u64, 10, digits)) + startHalf;

            if (check <= end and check >= start) {
                result = result + check;
            }

            startHalf = startHalf + 1;
        }
    }

    return result;
}

fn part_2(allocator: Allocator, input: []const u8) !u256 {
    // Go through all 1s, then 2s, then 3s, etc until > end and repeat > 1/2 length

    var sequences = std.mem.splitScalar(u8, input, ',');

    var result: u256 = 0;
    while (sequences.next()) |sequence| {
        var items = std.mem.splitScalar(u8, sequence, '-');

        const startStr = std.mem.trim(u8, items.first(), " \t\n\r");
        const lastStr = std.mem.trim(u8, items.next().?, " \t\n\r");

        var current = try std.fmt.parseInt(u64, startStr, 10);
        const end = try std.fmt.parseInt(u64, lastStr, 10);

        while (current <= end) {
            const digits = count_digits(current);
            const buf = try allocator.alloc(u8, digits);
            defer allocator.free(buf);
            const numAsString = try std.fmt.bufPrint(buf, "{}", .{current});

            const half = @divFloor(digits, 2);
            for (1..(half + 1)) |count| {
                var allMatch = true;
                if (@mod(numAsString.len, count) == 0) {
                    var searchIndex: u8 = 0;

                    const search = numAsString[0..count];
                    while (searchIndex < numAsString.len) {
                        if (!std.mem.eql(u8, search, numAsString[searchIndex..(searchIndex + count)])) {
                            allMatch = false;
                            break;
                        }

                        const addMore: u8 = @intCast(count);
                        searchIndex = searchIndex + addMore;
                    }
                } else {
                    allMatch = false;
                }

                if (allMatch) {
                    result = result + current;
                    break;
                }
            }

            current = current + 1;
        }
    }

    return result;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec02.txt");

    std.debug.print("December 02\n", .{});
    const resultPart1 = part_1(file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 1227775554;
    const input = "11-22,95-115,998-1012,1188511880-1188511890,222220-222224,1698522-1698528,446443-446449,38593856-38593862,565653-565659,824824821-824824827,2121212118-2121212124";

    const actual = part_1(input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 4174379265;
    const input = "11-22,95-115,998-1012,1188511880-1188511890,222220-222224,1698522-1698528,446443-446449,38593856-38593862,565653-565659,824824821-824824827,2121212118-2121212124";

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
