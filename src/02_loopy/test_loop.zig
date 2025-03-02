const std = @import("std");
const expect = std.testing.expect;

test "while" {
    var bagels: u8 = 5;
    while (bagels > 0) {
        // The formatter converts all this into one line...
        // I have to find a way to disable it.
        std.debug.print("Are there any bagels left?\nYes, {d}\n", .{bagels});
        bagels -= 1;
    }

    std.debug.print("Are there any bagels left?\nNo, none\n", .{});
    try expect(bagels == 0);
}

test "while_and_continue" {
    var bagels: u8 = 0;
    const target_bagels: u8 = 5;
    // We can determine from this program that the continue statement is run
    // after the loop ends.
    while (bagels < target_bagels) : (bagels += 2) {
        // Having to do a curly bracket, paren, then semicolon is
        // not fun to type.
        std.debug.print("Now we have {d}.\n", .{bagels});
        std.debug.print("Demand is {d}.\n", .{target_bagels});
        std.debug.print("{s}\n", .{"Restocking two bagels..."});
    }
    std.debug.print("Now we have {d}.\n", .{bagels});
}
