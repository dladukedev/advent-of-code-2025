const std = @import("std");
const Allocator = std.mem.Allocator;
const util = @import("util.zig");
const z3 = @import("z3.zig");

fn find_least_buttons(allocator: Allocator, target: u10, buttons: []u10) !u64 {
    var queue = std.PriorityQueue(State, void, compareState).init(allocator, {});
    defer queue.deinit();

    const pressed: [10]?u10 = [_]?u10{null} ** 10;
    try queue.add(State{ .state = 0, .score = 0, .pressed = pressed });

    while (queue.count() > 0) {
        const state = queue.remove();

        if (target == state.state) {
            return state.score;
        }

        for (buttons) |group| {
            // TODO: Handle only check each once
            if (std.mem.findScalar(?u10, &state.pressed, group) == null) {
                const nextState = state.state ^ group;
                var nextPressed: [10]?u10 = state.pressed;
                nextPressed[state.score] = group;

                try queue.add(State{ .state = nextState, .score = state.score + 1, .pressed = nextPressed });
            }
        }
        //     queue.sortedBy { it.totalCost }
    }

    @panic("Failed to find path");
}

fn find_least_buttons_for_jolts(allocator: std.mem.Allocator, buttons: [][10]u16, jolts: [10]u16) !u64 {
    z3.Z3_reset_memory();

    const cfg = z3.Z3_mk_config();

    const ctx = z3.Z3_mk_context(cfg);
    z3.Z3_del_config(cfg);

    const optimizer = z3.Z3_mk_optimize(ctx);

    var vars = std.array_list.Managed(z3.Z3_ast).init(allocator);
    defer vars.deinit();

    const int_sort = z3.Z3_mk_int_sort(ctx);
    const zero = z3.Z3_mk_int64(ctx, 0, int_sort);

    for (buttons, 0..) |_, i| {
        var name_buf: [32]u8 = undefined;
        const name = try std.fmt.bufPrintSentinel(&name_buf, "b{d}", .{i}, ' ');

        const sym = z3.Z3_mk_string_symbol(ctx, name.ptr);
        const var_ast = z3.Z3_mk_const(ctx, sym, int_sort);
        try vars.append(var_ast);

        const ge = z3.Z3_mk_ge(ctx, var_ast, zero);
        z3.Z3_optimize_assert(ctx, optimizer, ge);
    }

    for (jolts, 0..) |tgt_val, i| {
        var terms = std.array_list.Managed(z3.Z3_ast).init(allocator);
        defer terms.deinit();

        for (buttons, 0..) |btn, btn_idx| {
            if (i < btn.len and btn[i] != 0) {
                const coefficient = z3.Z3_mk_int64(ctx, btn[i], int_sort);
                const button_var = vars.items[btn_idx];
                const term = z3.Z3_mk_mul(ctx, 2, &[_]z3.Z3_ast{ coefficient, button_var });
                try terms.append(term);
            }
        }

        if (terms.items.len > 0) {
            const sum = if (terms.items.len == 1)
                terms.items[0]
            else
                z3.Z3_mk_add(ctx, @intCast(terms.items.len), terms.items.ptr);

            const val_i64: i64 = @intCast(tgt_val);
            const tgt_ast = z3.Z3_mk_int64(ctx, val_i64, int_sort);
            const eq = z3.Z3_mk_eq(ctx, sum, tgt_ast);
            z3.Z3_optimize_assert(ctx, optimizer, eq);
        }
    }

    const obj_sum = z3.Z3_mk_add(ctx, @intCast(vars.items.len), vars.items.ptr);
    _ = z3.Z3_optimize_minimize(ctx, optimizer, obj_sum);
    _ = z3.Z3_optimize_check(ctx, optimizer, 0, null);

    const model = z3.Z3_optimize_get_model(ctx, optimizer);
    defer z3.Z3_model_dec_ref(ctx, model);

    var total_buttons: u64 = 0;
    for (vars.items) |v| {
        var out: z3.Z3_ast = undefined;
        _ = z3.Z3_model_eval(ctx, model, v, true, &out);

        var val_i64: i64 = undefined;
        _ = z3.Z3_get_numeral_int64(ctx, out, &val_i64);

        total_buttons += @intCast(val_i64);
        z3.Z3_dec_ref(ctx, out);
    }

    return total_buttons;
}

const State = struct { state: u10, score: u64, pressed: [10]?u10 };
fn compareState(_: void, a: State, b: State) std.math.Order {
    if (a.score < b.score) {
        return .lt;
    } else if (a.score > b.score) {
        return .gt;
    } else {
        return .eq;
    }
}

fn part_1(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var count: u64 = 0;

    for (lines.items) |line| {
        const endBracketIndex = std.mem.indexOf(u8, line, "]").?;
        const startBraceIndex = std.mem.indexOf(u8, line, "{").?;

        const targetStr = line[1..endBracketIndex];
        var target: u10 = 0;

        for (targetStr, 0..) |char, i| {
            if (char == '#') {
                target |= @as(u10, 1) << @intCast(9 - i);
            }
        }

        const buttonsSection = line[endBracketIndex + 3 .. startBraceIndex - 2];

        var buttonGroups = std.mem.splitSequence(u8, buttonsSection, ") (");
        var buttons = std.array_list.Managed(u10).init(allocator);
        defer buttons.deinit();

        while (buttonGroups.next()) |group| {
            var buttonsIterator = std.mem.splitSequence(u8, group, ",");

            var result: u10 = 0;

            while (buttonsIterator.next()) |button| {
                const idx = try std.fmt.parseInt(u10, button, 10);
                result |= @as(u10, 1) << @intCast(9 - idx);
            }

            try buttons.append(result);
        }

        count += try find_least_buttons(allocator, target, buttons.items);
    }

    return count;
}

fn part_2(allocator: Allocator, input: []const u8) !u64 {
    const lines = util.split_lines(allocator, input);
    defer lines.deinit();

    var count: u64 = 0;

    for (lines.items) |line| {
        const endBracketIndex = std.mem.indexOf(u8, line, "]").?;
        const startBraceIndex = std.mem.indexOf(u8, line, "{").?;

        const targetStr = line[1..endBracketIndex];
        var target: u10 = 0;

        for (targetStr, 0..) |char, i| {
            if (char == '#') {
                target |= @as(u10, 1) << @intCast(9 - i);
            }
        }

        const buttonsSection = line[endBracketIndex + 3 .. startBraceIndex - 2];

        var buttonGroups = std.mem.splitSequence(u8, buttonsSection, ") (");
        var buttons = std.array_list.Managed([10]u16).init(allocator);
        defer buttons.deinit();

        while (buttonGroups.next()) |group| {
            var buttonsIterator = std.mem.splitSequence(u8, group, ",");
            var bg: [10]u16 = [_]u16{0} ** 10;

            while (buttonsIterator.next()) |button| {
                const i = try std.fmt.parseInt(u16, button, 10);
                bg[i] = 1;
            }

            try buttons.append(bg);
        }

        var joltage: [10]u16 = [_]u16{0} ** 10;
        const joltageString = line[startBraceIndex + 1 .. line.len - 1];
        var joltageIterator = std.mem.splitSequence(u8, joltageString, ",");
        var joltageIndex: u16 = 0;
        while (joltageIterator.next()) |jolt| {
            joltage[joltageIndex] = try std.fmt.parseInt(u16, jolt, 10);
            joltageIndex += 1;
        }

        count += try find_least_buttons_for_jolts(allocator, buttons.items, joltage);
    }

    return count;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const file = @embedFile("./dec10.txt");

    std.debug.print("December 10\n", .{});
    const resultPart1 = part_1(allocator, file);
    std.debug.print("Part 1: {!}\n", .{resultPart1});
    const resultPart2 = part_2(allocator, file);
    std.debug.print("Part 2: {!}\n", .{resultPart2});
}

test "part 1" {
    const expected = 7;
    const input =
        \\[.##.] (3) (1,3) (2) (2,3) (0,2) (0,1) {3,5,4,7}
        \\[...#.] (0,2,3,4) (2,3) (0,4) (0,1,2) (1,2,3,4) {7,5,12,7,2}
        \\[.###.#] (0,1,2,3,4) (0,3,4) (0,1,2,4,5) (1,2) {10,11,11,5,10,5}
    ;

    const actual = part_1(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}

test "part 2" {
    const expected = 33;
    const input =
        \\[.##.] (3) (1,3) (2) (2,3) (0,2) (0,1) {3,5,4,7}
        \\[...#.] (0,2,3,4) (2,3) (0,4) (0,1,2) (1,2,3,4) {7,5,12,7,2}
        \\[.###.#] (0,1,2,3,4) (0,3,4) (0,1,2,4,5) (1,2) {10,11,11,5,10,5}
    ;

    const actual = part_2(std.testing.allocator, input);

    try std.testing.expectEqual(expected, actual);
}
