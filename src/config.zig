const std = @import("std");

pub const Config = struct {
    host: []const u8,
    port: u16,

    pub fn deinit(self: Config, allocator: std.mem.Allocator) void {
        allocator.free(self.host);
    }
};

pub fn load(allocator: std.mem.Allocator) !Config {
    // Placeholder config loader. Replace with env or file-based config later.
    const host = try allocator.dupe(u8, "0.0.0.0");
    const port: u16 = 8080;
    return .{ .host = host, .port = port };
}
