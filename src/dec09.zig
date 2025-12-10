const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

const Point = struct { x: u32, y: u32 };
const Area = struct { p1: Point, p2: Point, area: u64 };
fn sortAreas(_: void, a1: Area, a2: Area) bool {
    return a1.area > a2.area;
}
const Line = struct { p1: Point, p2: Point };

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

fn isLineIntersecting(l1: Line, l2: Line) bool {
    const l1Horizontal = l1.p1.y == l1.p2.y;
    const l1Vertical = l1.p1.x == l1.p2.x;

    const l2Horizontal = l2.p1.y == l2.p2.y;
    const l2Vertical = l2.p1.x == l2.p2.x;

    if ((l1Horizontal and l2Horizontal) or (l1Vertical and l2Vertical)) {
        return false;
    }

    if (l1Horizontal and l2Vertical) {
        return l1.p1.y >= l2.p1.y and l1.p1.y <= l2.p2.y and l2.p1.x >= l1.p1.x and l2.p1.x <= l1.p2.x;
    }

    if (l1Vertical and l2Horizontal) {
        return l1.p1.x >= l2.p1.x and l1.p1.x <= l2.p2.x and l2.p1.y >= l1.p1.y and l2.p1.y <= l1.p2.y;
    }

    @panic("invalid lines?");
}

fn isValidBoxFast(p1: Point, p2: Point, border: []Line) !bool {
    const smallY, const bigY = if (p1.y > p2.y) .{ p2.y, p1.y } else .{ p1.y, p2.y };
    const smallX, const bigX = if (p1.x > p2.x) .{ p2.x, p1.x } else .{ p1.x, p2.x };

    const topLeft = Point{ .x = smallX, .y = bigY };
    const topRight = Point{ .x = bigX, .y = bigY };
    const bottomLeft = Point{ .x = smallX, .y = smallY };
    const bottomRight = Point{ .x = bigX, .y = smallY };

    const top = Line{ .p1 = topLeft, .p2 = topRight };
    const bottom = Line{ .p1 = bottomLeft, .p2 = bottomRight };
    const left = Line{ .p1 = bottomLeft, .p2 = topLeft };
    const right = Line{ .p1 = bottomRight, .p2 = topRight };

    for (border) |line| {
        if (isLineIntersecting(line, top)) return false;
        if (isLineIntersecting(line, bottom)) return false;
        if (isLineIntersecting(line, right)) return false;
        if (isLineIntersecting(line, left)) return false;
    }

    return true;
}

fn calcTurnDir(checkPoint: Point, previousPoint: Point, nextPoint: Point) u8 {
    const prevDir: u8 = if (previousPoint.x > checkPoint.x) 'l' else if (previousPoint.x < checkPoint.x) 'r' else if (previousPoint.y > checkPoint.y) 'd' else 'u';
    const nextDir: u8 = if (checkPoint.x > nextPoint.x) 'l' else if (checkPoint.x < nextPoint.x) 'r' else if (checkPoint.y > nextPoint.y) 'd' else 'u';

    var turn: u8 = 'x';
    if (prevDir == 'r' and nextDir == 'u') turn = 'o';
    if (prevDir == 'r' and nextDir == 'd') turn = 'i';

    if (prevDir == 'l' and nextDir == 'u') turn = 'i';
    if (prevDir == 'l' and nextDir == 'd') turn = 'o';

    if (prevDir == 'u' and nextDir == 'r') turn = 'i';
    if (prevDir == 'u' and nextDir == 'l') turn = 'o';

    if (prevDir == 'd' and nextDir == 'r') turn = 'o';
    if (prevDir == 'd' and nextDir == 'l') turn = 'i';

    if (turn == 'x') @panic("error");

    return turn;
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

        const x = try std.fmt.parseInt(u32, xStr, 10);
        const y = try std.fmt.parseInt(u32, yStr, 10);

        points[index] = Point{ .x = x, .y = y };
    }

    var border = try allocator.alloc(Line, points.len);
    defer allocator.free(border);

    for (points, 0..) |point, index| {
        const prevPoint = if (index == 0) points[points.len - 1] else points[index - 1];
        const nextPoint = if (index + 1 == points.len) points[0] else points[index + 1];
        const nextNextPoint = if (index + 1 == points.len) points[1] else if (index + 2 == points.len) points[0] else points[index + 2];

        const lastTurn = calcTurnDir(point, prevPoint, nextPoint);
        const nextTurn = calcTurnDir(nextPoint, point, nextNextPoint);

        const dir: u8 = if (point.x > nextPoint.x) 'l' else if (point.x < nextPoint.x) 'r' else if (point.y > nextPoint.y) 'd' else 'u';

        if (dir == 'u') {
            const startY = if (lastTurn == 'o') point.y - 1 else point.y + 1;
            const endY = if (nextTurn == 'o') nextPoint.y + 1 else nextPoint.y - 1;

            const startPoint = Point{ .x = point.x + 1, .y = startY };
            const endPoint = Point{ .x = point.x + 1, .y = endY };
            border[index] = Line{ .p1 = startPoint, .p2 = endPoint };
        }

        if (dir == 'd') {
            const startY = if (lastTurn == 'o') point.y + 1 else point.y - 1;
            const endY = if (nextTurn == 'o') nextPoint.y - 1 else nextPoint.y + 1;

            const startPoint = Point{ .x = point.x - 1, .y = startY };
            const endPoint = Point{ .x = point.x - 1, .y = endY };
            border[index] = Line{ .p1 = endPoint, .p2 = startPoint };
        }

        if (dir == 'l') {
            const startX = if (lastTurn == 'o') point.x + 1 else point.x - 1;
            const endX = if (nextTurn == 'o') nextPoint.x - 1 else nextPoint.x + 1;

            const startPoint = Point{ .x = startX, .y = point.y + 1 };
            const endPoint = Point{ .x = endX, .y = point.y + 1 };
            border[index] = Line{ .p1 = endPoint, .p2 = startPoint };
        }

        if (dir == 'r') {
            const startX = if (lastTurn == 'o') point.x - 1 else point.x + 1;
            const endX = if (nextTurn == 'o') nextPoint.x + 1 else nextPoint.x - 1;

            const startPoint = Point{ .x = startX, .y = point.y - 1 };
            const endPoint = Point{ .x = endX, .y = point.y - 1 };
            border[index] = Line{ .p1 = startPoint, .p2 = endPoint };
        }
    }

    var areasBuffer = std.array_list.Managed(Area).init(allocator);

    for (points, 0..) |p1, idx1| {
        for (points, 0..) |p2, idx2| {
            if (idx1 <= idx2) continue;

            const area = calculateArea(p1, p2);

            try areasBuffer.append(Area{ .p1 = p1, .p2 = p2, .area = area });
        }
    }

    var areas = try allocator.alloc(Area, areasBuffer.items.len);
    defer allocator.free(areas);
    @memcpy(areas[0..], areasBuffer.items[0..]);
    areasBuffer.deinit();

    std.mem.sort(Area, areas, {}, sortAreas);

    for (areas) |area| {
        const isValid = try isValidBoxFast(area.p1, area.p2, border);
        if (isValid) {
            return area.area;
        }
    }
    return 0;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec09.txt");

    std.debug.print("December 09\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
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

test "part 2" {
    const expected = 24;
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

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
