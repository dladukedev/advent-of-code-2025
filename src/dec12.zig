const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");

fn part_1(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var packageAreas: [6]u8 = undefined;

    var linesIndex: u8 = 1;
    while (linesIndex < 30) : (linesIndex += 5) {
        var area: u8 = 0;
        for (0..3) |offset| {
            for (lines.items[linesIndex + offset]) |char| {
                if (char == '#') area += 1;
            }
        }

        packageAreas[@divFloor(linesIndex, 5)] = area;
    }

    var count: u64 = 0;
    for (lines.items[30..]) |line| {
        const splitIndex = std.mem.indexOf(u8, line, ":").?;

        const dimenPart = line[0..splitIndex];
        var dimens = std.mem.splitScalar(u8, dimenPart, 'x');

        const countsPart = line[splitIndex + 2 ..];
        var packageCounts = std.mem.splitScalar(u8, countsPart, ' ');

        const length = try std.fmt.parseInt(u16, dimens.next().?, 10);
        const width = try std.fmt.parseInt(u16, dimens.next().?, 10);
        const area = length * width;

        var packageArea: u16 = 0;
        var index: u16 = 0;
        while (packageCounts.next()) |packageCount| : (index += 1) {
            packageArea += try std.fmt.parseInt(u16, packageCount, 10) * packageAreas[index];
        }

        if (area >= packageArea) {
            count += 1;
        }
    }

    return count;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec12.txt");

    std.debug.print("December 12\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
}
