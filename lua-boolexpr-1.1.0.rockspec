package = "Lua-BoolExpr"
version = "1.1.0"
source = {
    url = "git://github.com/A-G-D/lua-boolexpr,
    tag = "v1.1.0"
}
description = {
    summary = "Boolean Expression library for Lua",
    detailed = [[
        Lua-BoolExpr is a Boolean Expression library for Lua
    ]],
    homepage = "http://a-g-d.github.io/lua-boolexpr/
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        boolexpr = "src/boolexpr.lua"
    }
    copy_directories = {
        "docs",
        "tests"
    }
}