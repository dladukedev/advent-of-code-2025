const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

fn part_1(allocator: Allocator, input: []const u8) u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var count: u64 = 0;
    for (lines.items, 0..) |line, y| {
        for (line, 0..) |char, x| {
            if (char != '@') continue;

            var neighbors: u4 = 0;

            if (y != 0 and x != 0 and lines.items[y - 1][x - 1] == '@') {
                neighbors = neighbors + 1;
            }

            if (y != 0 and lines.items[y - 1][x] == '@') {
                neighbors = neighbors + 1;
            }

            if (y != 0 and x + 1 < line.len and lines.items[y - 1][x + 1] == '@') {
                neighbors = neighbors + 1;
            }

            if (x != 0 and lines.items[y][x - 1] == '@') {
                neighbors = neighbors + 1;
            }

            if (x + 1 < line.len and lines.items[y][x + 1] == '@') {
                neighbors = neighbors + 1;
            }

            if (y + 1 < lines.items.len and x != 0 and lines.items[y + 1][x - 1] == '@') {
                neighbors = neighbors + 1;
            }

            if (y + 1 < lines.items.len and lines.items[y + 1][x] == '@') {
                neighbors = neighbors + 1;
            }

            if (y + 1 < lines.items.len and x + 1 < line.len and lines.items[y + 1][x + 1] == '@') {
                neighbors = neighbors + 1;
            }

            if (neighbors < 4) {
                count = count + 1;
            }
        }
    }

    return count;
}

fn part_2(allocator: Allocator, input: []const u8) !u256 {
    var initialLines = util.split_lines(allocator, input);
    defer initialLines.deinit();

    var lines = std.array_list.Managed([]u8).init(allocator);
    defer lines.deinit();

    for (initialLines.items) |line| {
        const lineArray: []u8 = try allocator.dupe(u8, line);
        lines.append(lineArray) catch unreachable;
    }
    defer for (lines.items) |line| {
        allocator.free(line);
    };

    var count: u64 = 0;
    var removed: u64 = 1;

    while (removed > 0) {
        var nextLines = lines;

        removed = 0;
        for (lines.items, 0..) |line, y| {
            for (line, 0..) |char, x| {
                if (char != '@') continue;

                var neighbors: u4 = 0;

                if (y != 0 and x != 0 and lines.items[y - 1][x - 1] == '@') {
                    neighbors = neighbors + 1;
                }

                if (y != 0 and lines.items[y - 1][x] == '@') {
                    neighbors = neighbors + 1;
                }

                if (y != 0 and x + 1 < line.len and lines.items[y - 1][x + 1] == '@') {
                    neighbors = neighbors + 1;
                }

                if (x != 0 and lines.items[y][x - 1] == '@') {
                    neighbors = neighbors + 1;
                }

                if (x + 1 < line.len and lines.items[y][x + 1] == '@') {
                    neighbors = neighbors + 1;
                }

                if (y + 1 < lines.items.len and x != 0 and lines.items[y + 1][x - 1] == '@') {
                    neighbors = neighbors + 1;
                }

                if (y + 1 < lines.items.len and lines.items[y + 1][x] == '@') {
                    neighbors = neighbors + 1;
                }

                if (y + 1 < lines.items.len and x + 1 < line.len and lines.items[y + 1][x + 1] == '@') {
                    neighbors = neighbors + 1;
                }

                if (neighbors < 4) {
                    removed = removed + 1;
                    nextLines.items[y][x] = '.';
                }
            }
        }

        count = count + removed;
        lines = nextLines;
    }

    return count;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec04.txt");

    std.debug.print("December 04\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 13;
    const input =
        \\..@@.@@@@.
        \\@@@.@.@.@@
        \\@@@@@.@.@@
        \\@.@@@@..@.
        \\@@.@@@@.@@
        \\.@@@@@@@.@
        \\.@.@.@.@@@
        \\@.@@@.@@@@
        \\.@@@@@@@@.
        \\@.@.@@@.@.
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 43;
    const input =
        \\..@@.@@@@.
        \\@@@.@.@.@@
        \\@@@@@.@.@@
        \\@.@@@@..@.
        \\@@.@@@@.@@
        \\.@@@@@@@.@
        \\.@.@.@.@@@
        \\@.@@@.@@@@
        \\.@@@@@@@@.
        \\@.@.@@@.@.
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
