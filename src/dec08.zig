const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

const Point = struct { x: u32, y: u32, z: u32 };

const Distance = struct { point1: u16, point2: u16, distance: u64 };
fn sortDistances(context: void, d1: Distance, d2: Distance) bool {
    _ = context;

    return d1.distance < d2.distance;
}

fn calculateDistance(p1: Point, p2: Point) u64 {
    const x: u64 = if (p1.x > p2.x) p1.x - p2.x else p2.x - p1.x;
    const y: u64 = if (p1.y > p2.y) p1.y - p2.y else p2.y - p1.y;
    const z: u64 = if (p1.z > p2.z) p1.z - p2.z else p2.z - p1.z;

    return std.math.sqrt(std.math.pow(u64, @abs(x), 2) + std.math.pow(u64, @abs(y), 2) + std.math.pow(u64, @abs(z), 2));
}

fn part_1(allocator: Allocator, input: []const u8, count: u16) !u256 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var points = try allocator.alloc(Point, lines.items.len);
    defer allocator.free(points);

    for (lines.items, 0..) |line, index| {
        var coordinates = std.mem.splitScalar(u8, line, ',');
        const xStr = std.mem.trim(u8, coordinates.first(), " \t\n\r");
        const yStr = std.mem.trim(u8, coordinates.next().?, " \t\n\r");
        const zStr = std.mem.trim(u8, coordinates.next().?, " \t\n\r");

        const x = try std.fmt.parseInt(u32, xStr, 10);
        const y = try std.fmt.parseInt(u32, yStr, 10);
        const z = try std.fmt.parseInt(u32, zStr, 10);

        points[index] = Point{ .x = x, .y = y, .z = z };
    }

    var distanceBuffer = std.array_list.Managed(Distance).init(allocator);

    for (points, 0..) |p1, idx1| {
        for (points, 0..) |p2, idx2| {
            if (idx1 <= idx2) continue;

            const distance = calculateDistance(p1, p2);

            try distanceBuffer.append(Distance{ .point1 = @intCast(idx1), .point2 = @intCast(idx2), .distance = distance });
        }
    }

    var distances = try allocator.alloc(Distance, distanceBuffer.items.len);
    defer allocator.free(distances);
    @memcpy(distances[0..], distanceBuffer.items[0..]);
    distanceBuffer.deinit();

    std.mem.sort(Distance, distances, {}, sortDistances);

    var nextCircuit: u16 = 1;
    var circuits = try allocator.alloc(u16, lines.items.len);
    defer allocator.free(circuits);
    @memset(circuits, 0);

    for (distances[0..count]) |distance| {
        const circuit1 = circuits[distance.point1];
        const circuit2 = circuits[distance.point2];

        if (circuit1 != 0 and circuit2 == 0) {
            circuits[distance.point2] = circuit1;
        } else if (circuit2 != 0 and circuit1 == 0) {
            circuits[distance.point1] = circuit2;
        } else if (circuit1 == 0 and circuit2 == 0) {
            circuits[distance.point1] = nextCircuit;
            circuits[distance.point2] = nextCircuit;
            nextCircuit = nextCircuit + 1;
        } else if (circuit1 != 0 and circuit2 != 0 and circuit1 != circuit2) {
            for (circuits, 0..) |circuit, idx| {
                if (circuit == circuit2) {
                    circuits[idx] = circuit1;
                }
            }
        }
    }

    var circuitLen = try allocator.alloc(u64, nextCircuit);
    defer allocator.free(circuitLen);
    @memset(circuitLen, 0);

    for (circuits) |circuit| {
        if (circuit == 0) continue;
        circuitLen[circuit] = circuitLen[circuit] + 1;
    }

    std.mem.sort(u64, circuitLen, {}, comptime std.sort.desc(u64));

    return circuitLen[0] * circuitLen[1] * circuitLen[2];
}

fn part_2(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var points = try allocator.alloc(Point, lines.items.len);
    defer allocator.free(points);

    for (lines.items, 0..) |line, index| {
        var coordinates = std.mem.splitScalar(u8, line, ',');
        const xStr = std.mem.trim(u8, coordinates.first(), " \t\n\r");
        const yStr = std.mem.trim(u8, coordinates.next().?, " \t\n\r");
        const zStr = std.mem.trim(u8, coordinates.next().?, " \t\n\r");

        const x = try std.fmt.parseInt(u32, xStr, 10);
        const y = try std.fmt.parseInt(u32, yStr, 10);
        const z = try std.fmt.parseInt(u32, zStr, 10);

        points[index] = Point{ .x = x, .y = y, .z = z };
    }

    var distanceBuffer = std.array_list.Managed(Distance).init(allocator);

    for (points, 0..) |p1, idx1| {
        for (points, 0..) |p2, idx2| {
            if (idx1 <= idx2) continue;

            const distance = calculateDistance(p1, p2);

            try distanceBuffer.append(Distance{ .point1 = @intCast(idx1), .point2 = @intCast(idx2), .distance = distance });
        }
    }

    var distances = try allocator.alloc(Distance, distanceBuffer.items.len);
    defer allocator.free(distances);
    @memcpy(distances[0..], distanceBuffer.items[0..]);
    distanceBuffer.deinit();

    std.mem.sort(Distance, distances, {}, sortDistances);

    var nextCircuit: u16 = 1;
    var circuits = try allocator.alloc(u16, lines.items.len);
    defer allocator.free(circuits);
    @memset(circuits, 0);

    for (distances) |distance| {
        const circuit1 = circuits[distance.point1];
        const circuit2 = circuits[distance.point2];

        if (circuit1 != 0 and circuit2 == 0) {
            circuits[distance.point2] = circuit1;
        } else if (circuit2 != 0 and circuit1 == 0) {
            circuits[distance.point1] = circuit2;
        } else if (circuit1 == 0 and circuit2 == 0) {
            circuits[distance.point1] = nextCircuit;
            circuits[distance.point2] = nextCircuit;
            nextCircuit = nextCircuit + 1;
        } else if (circuit1 != 0 and circuit2 != 0 and circuit1 != circuit2) {
            for (circuits, 0..) |circuit, idx| {
                if (circuit == circuit2) {
                    circuits[idx] = circuit1;
                }
            }
        }

        var allMatch = true;
        for (circuits) |circuit| {
            if (circuit != circuits[0]) {
                allMatch = false;
                break;
            }
        }

        if (allMatch) {
            const point1 = points[distance.point1];
            const point2 = points[distance.point2];

            return point1.x * point2.x;
        }
    }

    var circuitLen = try allocator.alloc(u64, nextCircuit);
    defer allocator.free(circuitLen);
    @memset(circuitLen, 0);

    for (circuits) |circuit| {
        if (circuit == 0) continue;
        circuitLen[circuit] = circuitLen[circuit] + 1;
    }

    std.mem.sort(u64, circuitLen, {}, comptime std.sort.desc(u64));

    return circuitLen[0] * circuitLen[1] * circuitLen[2];
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec08.txt");

    std.debug.print("December 08\n", .{});
    const resultPart1 = part_1(allocator, file, 1000);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 40;
    const input =
        \\162,817,812
        \\57,618,57
        \\906,360,560
        \\592,479,940
        \\352,342,300
        \\466,668,158
        \\542,29,236
        \\431,825,988
        \\739,650,466
        \\52,470,668
        \\216,146,977
        \\819,987,18
        \\117,168,530
        \\805,96,715
        \\346,949,466
        \\970,615,88
        \\941,993,340
        \\862,61,35
        \\984,92,344
        \\425,690,689
    ;

    const actual = part_1(std.testing.allocator, input, 10);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 25272;
    const input =
        \\162,817,812
        \\57,618,57
        \\906,360,560
        \\592,479,940
        \\352,342,300
        \\466,668,158
        \\542,29,236
        \\431,825,988
        \\739,650,466
        \\52,470,668
        \\216,146,977
        \\819,987,18
        \\117,168,530
        \\805,96,715
        \\346,949,466
        \\970,615,88
        \\941,993,340
        \\862,61,35
        \\984,92,344
        \\425,690,689
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
