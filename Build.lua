workspace "ProjectTemplate"
    architecture "x64"
    configurations { "Debug", "Release" }
    startproject "App"

    -- Direct MSVC soluton into .solution folder
    location ".solution"

    output_exe = "%{wks.location}/../Build/output"
    output_bin = "%{wks.location}/../Build/output/bin"
    output_int = "%{wks.location}/../Build/intermediate/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}/%{prj.name}"

-- Include sub-folders scripts
include "core/Core.lua"
include "App/App.lua"
include "Modules/SampleModule/Sample.lua"