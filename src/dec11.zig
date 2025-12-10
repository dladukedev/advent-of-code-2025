const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

const Point = struct { x: u32, y: u32 };

fn calculateArea(p1: Point, p2: Point) u64 {
    const a: u64 = if (p1.x > p2.x) p1.x - p2.x else p2.x - p1.x;
    const b: u64 = if (p1.y > p2.y) p1.y - p2.y else p2.y - p1.y;

    return (a + 1) * (b + 1);
}

fn part_1(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var points = try allocator.alloc(Point, lines.items.len);
    defer allocator.free(points);

    for (lines.items, 0..) |line, index| {
        var coordinates = std.mem.splitScalar(u8, line, ',');
        const xStr = std.mem.trim(u8, coordinates.first(), " \t\n\r");
        const yStr = std.mem.trim(u8, coordinates.next().?, " \t\n\r");

        const x = try std.fmt.parseInt(u32, xStr, 10);
        const y = try std.fmt.parseInt(u32, yStr, 10);

        points[index] = Point{ .x = x, .y = y };
    }

    var largestArea: u64 = 0;

    for (points, 0..) |p1, idx1| {
        for (points, 0..) |p2, idx2| {
            if (idx1 <= idx2) continue;

            const area = calculateArea(p1, p2);

            if (area > largestArea) {
                largestArea = area;
            }
        }
    }

    return largestArea;
}

// fn part_2(allocator: Allocator, input: []const u8) !u64 {
// }

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec11.txt");

    std.debug.print("December 11\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    // const resultPart2 = part_2(allocator, file);
    // std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 50;
    const input =
        \\7,1
        \\11,1
        \\11,7
        \\9,7
        \\9,5
        \\2,5
        \\2,3
        \\7,3
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

// test "part 2" {
//     const expected = 25272;
//     const input =
//         \\162,817,812
//         \\57,618,57
//         \\906,360,560
//         \\592,479,940
//         \\352,342,300
//         \\466,668,158
//         \\542,29,236
//         \\431,825,988
//         \\739,650,466
//         \\52,470,668
//         \\216,146,977
//         \\819,987,18
//         \\117,168,530
//         \\805,96,715
//         \\346,949,466
//         \\970,615,88
//         \\941,993,340
//         \\862,61,35
//         \\984,92,344
//         \\425,690,689
//     ;
//
//     const actual = part_2(std.testing.allocator, input);
//
//     try std.testing.expectEqual(expected, actual);
// }
