#!/usr/bin/env texlua

-- Identify the bundle and module
bundle = "tltesting"
module = "plain"

-- Treat as a bundle: all the scratch files in one place
maindir = ".."

checkengines = {"etex", "pdftex"}
checkformat  = "tex"

-- Find and run the build system
kpse.set_program_name("kpsewhich")
dofile(kpse.lookup("l3build.lua"))