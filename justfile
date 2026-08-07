set dotenv-load := true

library_skill_dir := "~/.pi/agent/skills/library"

# List available commands
default:
    @just --list

# Install the library (first-time setup)
install:
    pi -p --skill {{library_skill_dir}} "/library install"

# Add a new skill, agent, or prompt to the catalog
add prompt:
    pi -p --skill {{library_skill_dir}} "/library add {{prompt}}"

# Pull a skill from the catalog (install or refresh)
use name:
    pi -p --skill {{library_skill_dir}} "/library use {{name}}"

# Push local changes back to the source
push name:
    pi -p --skill {{library_skill_dir}} "/library push {{name}}"

# Remove a locally installed skill
remove name:
    pi -p --skill {{library_skill_dir}} "/library remove {{name}}"

# Sync all installed items (re-pull from source)
sync:
    pi -p --skill {{library_skill_dir}} "/library sync"

# List all entries in the catalog with install status
list:
    pi -p --skill {{library_skill_dir}} "/library list"

# Search the catalog by keyword
search keyword:
    pi -p --skill {{library_skill_dir}} "/library search {{keyword}}"
