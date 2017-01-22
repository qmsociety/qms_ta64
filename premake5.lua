-- Premake5 script to create project file.

workspace "qms_ta64"
location "."

configurations {
	"Debug",
	"Release"
}

platforms {
	"x64"
}

includedirs {
	"include/qms_ta64"
}

defines {
	"WIN32",
	"WIN32_LEAN_AND_MEAN",
	"VC_EXTRALEAN",
	"STRICT",
	"_CRT_NONSTDC_NO_DEPRECATE",
	"_CRT_SECURE_NO_WARNINGS",
	"_WINSOCK_DEPRECATED_NO_WARNINGS",
	"_SCL_SECURE_NO_WARNINGS",
}

filter "Debug"
targetsuffix "_x64_dbg"
buildoptions {
	"-GS",
	"-Od",
	"-FS",
}

rtti	"Off"
warnings	"Default"
optimize	"Off"
characterset	"MBCS"
exceptionhandling	"SEH"
symbols	"On"
runtime	"Debug"

defines  {
	"DEBUG",
	"_DEBUG",
}


filter "Release"
targetsuffix "_x64"
buildoptions {
	"-GF",
	"-Ox",
}

rtti	"Off"
warnings	"Default"
optimize	"Full"
characterset	"MBCS"
exceptionhandling	"SEH"
symbols	"On"
runtime	"Release"

defines {
	"NDEBUG"
}

flags  {
	"Optimize",
	"LinkTimeOptimization",
}

linkoptions  {
	"-LTCG",
}

filter {}

group "DLL"
include "qms_ta64/qms_ta64.lua"

