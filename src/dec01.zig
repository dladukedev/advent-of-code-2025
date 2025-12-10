const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

fn part_1(allocator: Allocator, input: []const u8) !u16 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var degrees: i32 = 50;

    var zeros: u16 = 0;
    for (lines.items) |line| {
        const direction = line[0];
        const turn: i32 = try std.fmt.parseInt(i32, line[1..], 10);

        const rotation = if (direction == 'R')
            degrees + turn
        else
            degrees - turn;

        degrees = @mod(rotation, 100);

        if (degrees == 0) {
            zeros = zeros + 1;
        }
    }

    return zeros;
}

fn part_2(allocator: Allocator, input: []const u8) !u16 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var degrees: i16 = 50;

    var zeros: u16 = 0;
    for (lines.items) |line| {
        const direction = line[0];
        const turn: i16 = try std.fmt.parseInt(i16, line[1..], 10);

        const rotation = if (direction == 'R')
            degrees + turn
        else
            degrees - turn;

        zeros = zeros + @as(u16, @divFloor(@abs(rotation), 100));

        if (degrees != 0 and rotation <= 0) {
            zeros = zeros + 1;
        }

        degrees = @mod(rotation, 100);
    }

    return zeros;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec01.txt");

    std.debug.print("December 01\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 3;
    const input =
        \\L68
        \\L30
        \\R48
        \\L5
        \\R60
        \\L55
        \\L1
        \\L99
        \\R14
        \\L82
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 6;
    const input =
        \\L68
        \\L30
        \\R48
        \\L5
        \\R60
        \\L55
        \\L1
        \\L99
        \\R14
        \\L82
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
