const std = @import("std");
const expect = std.testing.expect;

test "always false" {
    try expect(true);
}

comptime {
    _ = @import("main.zig");
}
