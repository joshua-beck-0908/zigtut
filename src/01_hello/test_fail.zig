const std = @import("std");
const expect = std.testing.expect;

test "Failure!" {
    try expect(false);
}
