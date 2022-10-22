add_rules("mode.release")
target("box2d")
    set_kind("static")
    set_runtimes("MD")
    add_cflags("-g", "-DNDEBUG")
    if is_plat("linux", "macosx") then
        add_links("pthread", "m", "dl")
    end
    add_defines("LIQUIDFUN_EXTERNAL_LANGUAGE_API=1")
    add_includedirs("liquidfun/Box2D/")
    add_files("liquidfun/Box2D/Box2D/**.cpp")

