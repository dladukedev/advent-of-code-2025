const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

fn traverse(map: std.StringHashMap(std.array_list.Managed([]const u8)), loc: []const u8, end: []const u8, cache: *std.StringHashMap(u64)) !u64 {
    if (cache.contains(loc)) {
        return cache.get(loc).?;
    }
    if (std.mem.eql(u8, loc, end)) {
        return 1;
    }

    if (std.mem.eql(u8, loc, "out")) {
        return 0;
    }

    const nextLocations = map.get(loc).?;

    var sum: u64 = 0;
    for (nextLocations.items) |nextLoc| {
        sum += try traverse(map, nextLoc, end, cache);
    }
    try cache.put(loc, sum);

    return sum;
}

fn part_1(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var map = std.StringHashMap(std.array_list.Managed([]const u8)).init(allocator);
    defer map.deinit();
    defer {
        var iterator = map.valueIterator();
        while (iterator.next()) |item| {
            item.deinit();
        }
    }

    for (lines.items) |line| {
        const splitIndex = std.mem.indexOf(u8, line, ":").?;
        const key = line[0..splitIndex];

        var buffer = std.array_list.Managed([]const u8).init(allocator);

        var nodesStrings = std.mem.splitScalar(u8, line[5..line.len], ' ');
        while (nodesStrings.next()) |node| {
            try buffer.append(node);
        }

        // var nodes = try allocator.alloc([]const u8, buffer.items.len);
        // @memcpy(nodes[0..], buffer.items[0..]);
        try map.put(key, buffer);
    }

    var cache = std.StringHashMap(u64).init(allocator);
    defer cache.deinit();

    return traverse(map, "you", "out", &cache);
}

fn part_2(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var map = std.StringHashMap(std.array_list.Managed([]const u8)).init(allocator);
    defer map.deinit();
    defer {
        var iterator = map.valueIterator();
        while (iterator.next()) |item| {
            item.deinit();
        }
    }

    for (lines.items) |line| {
        const splitIndex = std.mem.indexOf(u8, line, ":").?;
        const key = line[0..splitIndex];

        var buffer = std.array_list.Managed([]const u8).init(allocator);

        var nodesStrings = std.mem.splitScalar(u8, line[5..line.len], ' ');
        while (nodesStrings.next()) |node| {
            try buffer.append(node);
        }

        try map.put(key, buffer);
    }

    var cache = std.StringHashMap(u64).init(allocator);
    defer cache.deinit();

    const dacToFft = try traverse(map, "dac", "fft", &cache);

    cache.clearAndFree();
    const fftToDac = try traverse(map, "fft", "dac", &cache);

    cache.clearAndFree();
    const startToDac = try traverse(map, "svr", "dac", &cache);

    cache.clearAndFree();
    const startToFft = try traverse(map, "svr", "fft", &cache);

    cache.clearAndFree();
    const dacToOut = try traverse(map, "dac", "out", &cache);

    cache.clearAndFree();
    const fftToOut = try traverse(map, "fft", "out", &cache);

    return (startToDac * dacToFft * fftToOut) + (startToFft * fftToDac * dacToOut);
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec11.txt");

    std.debug.print("December 11\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 5;
    const input =
        \\aaa: you hhh
        \\you: bbb ccc
        \\bbb: ddd eee
        \\ccc: ddd eee fff
        \\ddd: ggg
        \\eee: out
        \\fff: out
        \\ggg: out
        \\hhh: ccc fff iii
        \\iii: out
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 2;
    const input =
        \\svr: aaa bbb
        \\aaa: fft
        \\fft: ccc
        \\bbb: tty
        \\tty: ccc
        \\ccc: ddd eee
        \\ddd: hub
        \\hub: fff
        \\eee: dac
        \\dac: fff
        \\fff: ggg hhh
        \\ggg: out
        \\hhh: out
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
