project "SampleModule"
    kind "SharedLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "off"

    targetdir (output_bin)
    objdir (output_int)

    files {
        "src/**.h",
        "src/**.cpp"
    }

    includedirs {
        "../../Core/src",
        "src"
    }

    links {
        "Core"
    }

    defines {
        "MODULE_BUILD_DLL"
    }

    filter "configurations:Debug"
        defines "MODULE_DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "MODULE_RELEASE"
        runtime "Release"
        optimize "on"