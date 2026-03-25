const std = @import("std");

pub const User = struct {
    id: []const u8,
};

pub fn authenticate(_allocator: std.mem.Allocator, _username: []const u8, _password: []const u8) !?User {
    // Placeholder: always fail. Replace with real auth.
    return null;
}
