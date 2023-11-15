project "Application"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
	{
		"src/**.h",
		"src/**.cpp"
	}

    includedirs
	{
		"%{wks.location}/systemc/src",
	}

    links
	{
		"systemc"
	}

    filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		buildoptions "/vmg"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		buildoptions "/vmg"
