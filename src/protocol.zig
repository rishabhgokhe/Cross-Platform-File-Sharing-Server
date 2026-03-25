const std = @import("std");

pub const Op = enum(u8) {
    auth = 1,
    list = 2,
    upload = 3,
    download = 4,
    rename = 5,
    delete = 6,
    metadata = 7,
};

pub const Header = packed struct {
    op: Op,
    reserved: u8 = 0,
    payload_len: u32,
};

pub fn readHeader(reader: anytype) !Header {
    var buf: [@sizeOf(Header)]u8 = undefined;
    try reader.readNoEof(&buf);
    return std.mem.bytesToValue(Header, &buf);
}

pub fn writeHeader(writer: anytype, header: Header) !void {
    var buf: [@sizeOf(Header)]u8 = undefined;
    std.mem.writeInt(u64, &buf, @bitCast(u64, header), .little);
    try writer.writeAll(&buf);
}
