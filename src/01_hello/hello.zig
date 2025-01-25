// Does the name of the "main" file matter???
const std = @import("std");

pub fn main() void {
    wysitutwyg(5);
}

// Not sure how you do a string.
pub fn wysitutwyg(input: u32) void {
    input += 1;
    // Just a guess that this would work.
    const animal = "HORSE";

    // It seems to need the... argument list(?) in curly braces.
    // They are preceeded by a dot for reasons I don't yet understand.
    // Variadic functions are for suckers I guess!
    // Also... shameless XKCD reference.
    std.debug.print("The {s} is a noble animal.", .{animal});
}
