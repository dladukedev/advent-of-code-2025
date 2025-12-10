const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

fn part_1(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var startIndex: u16 = 0;
    for (lines.items[0], 0..) |item, index| {
        if (item == 'S') {
            startIndex = @intCast(index);
            break;
        }
    }

    var beams = try allocator.alloc(bool, lines.items[0].len);
    defer allocator.free(beams);

    beams[startIndex] = true;

    var count: u64 = 0;
    for (lines.items[1..]) |line| {
        var nextBeams = try allocator.alloc(bool, lines.items[0].len);
        defer allocator.free(nextBeams);

        for (beams, 0..) |beam, index| {
            if (!beam) continue;

            if (line[index] == '^') {
                nextBeams[index - 1] = true;
                nextBeams[index + 1] = true;
                count = count + 1;
            } else {
                nextBeams[index] = true;
            }
        }

        @memcpy(beams[0..], nextBeams[0..]);
    }

    return count;
}

fn part_2(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var startIndex: u16 = 0;
    for (lines.items[0], 0..) |item, index| {
        if (item == 'S') {
            startIndex = @intCast(index);
            break;
        }
    }

    var beams = try allocator.alloc(u64, lines.items[0].len);
    @memset(beams, 0);
    defer allocator.free(beams);

    beams[startIndex] = 1;

    for (lines.items[1..]) |line| {
        var nextBeams = try allocator.alloc(u64, lines.items[0].len);
        @memset(nextBeams, 0);
        defer allocator.free(nextBeams);

        for (beams, 0..) |beam, index| {
            if (beam == 0) continue;

            if (line[index] == '^') {
                nextBeams[index - 1] = nextBeams[index - 1] + beam;
                nextBeams[index + 1] = nextBeams[index + 1] + beam;
            } else {
                nextBeams[index] = nextBeams[index] + beam;
            }
        }

        @memcpy(beams[0..], nextBeams[0..]);
    }

    var sum: u64 = 0;

    for (beams) |beam| {
        sum = sum + beam;
    }

    return sum;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec07.txt");

    std.debug.print("December 07\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 21;
    const input =
        \\.......S.......
        \\...............
        \\.......^.......
        \\...............
        \\......^.^......
        \\...............
        \\.....^.^.^.....
        \\...............
        \\....^.^...^....
        \\...............
        \\...^.^...^.^...
        \\...............
        \\..^...^.....^..
        \\...............
        \\.^.^.^.^.^...^.
        \\...............
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 40;
    const input =
        \\.......S.......
        \\...............
        \\.......^.......
        \\...............
        \\......^.^......
        \\...............
        \\.....^.^.^.....
        \\...............
        \\....^.^...^....
        \\...............
        \\...^.^...^.^...
        \\...............
        \\..^...^.....^..
        \\...............
        \\.^.^.^.^.^...^.
        \\...............
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
