const state = @import("state.zig");
const State = state.State;
const std = @import("std");

pub const Todo = struct {
    title: []const u8,
    description: []const u8,
    state: State,

    pub fn modifyState(self: *Todo, s: State) void {
        // Set value to dereferenced value.
        self.*.state = s;
    }

    pub fn print(self: *Todo) void {
        std.debug.print("\nTitle: {s}\nDescription: {s}\nState: {s}\n", .{ self.title, self.description, @tagName(self.state) });
    }
};
