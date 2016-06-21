#!/usr/bin/env texlua

-- Identify the bundle and module
bundle = "tltesting"
module = "latex"

-- Treat as a bundle: all the scratch files in one place
maindir = ".."

-- Select the engine(s) and format to test
checkengines = {"pdftex"}
checkformat  = "latex"

-- Find and run the build system
kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))