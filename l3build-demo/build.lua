#!/usr/bin/env texlua

-- Identify the bundle and module
bundle = "tltesting"
module = ""

-- Find and run the build system
kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))