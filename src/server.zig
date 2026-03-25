const std = @import("std");
const protocol = @import("protocol.zig");
const auth = @import("auth.zig");
const storage = @import("storage.zig");
const config = @import("config.zig");

pub fn run(allocator: std.mem.Allocator, cfg: config.Config) !void {
    _ = allocator;

    var server = std.net.StreamServer.init(.{});
    defer server.deinit();

    const address = try std.net.Address.parseIp(cfg.host, cfg.port);
    try server.listen(address);

    std.debug.print("Server listening on {s}:{d}\n", .{ cfg.host, cfg.port });

    while (true) {
        var conn = try server.accept();
        defer conn.stream.close();

        // TODO: Replace with connection pool and per-connection state.
        try handleConnection(conn);
    }
}

fn handleConnection(conn: std.net.StreamServer.Connection) !void {
    _ = conn;
    // Placeholder: accept and immediately close.
    // Future: read protocol messages, authenticate, and dispatch to storage.
    _ = protocol;
    _ = auth;
    _ = storage;
}
