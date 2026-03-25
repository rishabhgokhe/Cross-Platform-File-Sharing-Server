const std = @import("std");
const server = @import("server.zig");
const config = @import("config.zig");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const cfg = try config.load(allocator);
    defer cfg.deinit(allocator);

    try server.run(allocator, cfg);
}
