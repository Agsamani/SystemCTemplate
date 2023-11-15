workspace "SystemCTemplate"
    architecture "x64"
    startproject "TestC"

    configurations
	{
		"Debug",
		"Release"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"


include "systemc"
include "Application"