const std = @import("std");

pub fn build(b: *std.Build) !void {
    // TODO(Thomas): Add for windows and linux
    _ = b.addModule("sdl2.library", .{ .source_file = .{ .path = b.pathFromRoot("sdl2/lib/x64") } });
    _ = b.addModule("sdl2.include", .{ .source_file = .{ .path = b.pathFromRoot("sdl2/include") } });
    //_ = b.addModule("sdl2.h", .{ .source_file = .{ .path = b.pathFromRoot("sdl2/include/duckdb.h") } });
    _ = b.addModule("sdl2.dll", .{ .source_file = .{ .path = b.pathFromRoot("sdl2/lib/x64/SDL2.dll") } });
}
