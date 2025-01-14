const std = @import("std");
const todo = @import("models/todo.zig");
const Todo = todo.Todo;
const state = @import("models/state.zig");
const State = state.State;
const expect = std.testing.expect;

pub fn main() !void {
    var new_todo = Todo{
        .title = "New Todo",
        .description = "New Description",
        .state = State.Todo,
    };
    new_todo.print();
    new_todo.modifyState(State.InProgress);

    new_todo.print();
}

test "title equal" {
    const n = Todo{
        .title = "New Todo",
        .description = "New Description",
        .state = State.Todo,
    };

    try expect(std.mem.eql(u8, n.title, "New Todo"));
}
