const std = @import("std");
const Allocator = std.mem.Allocator;

pub fn split_lines(allocator: Allocator, buf: []const u8) std.array_list.Managed([]const u8) {
    var lines = std.array_list.Managed([]const u8).init(allocator);
    var iter = std.mem.splitAny(u8, buf, "\n");
    while (iter.next()) |line| lines.append(line) catch unreachable;
    if (lines.items[lines.items.len - 1].len == 0) _ = lines.pop();
    return lines;
}
