echo "    Checking dependancies"
command -v ag >/dev/null 2>&1 || { echo >&2 "      Please install ag to enable unite searching."; exit 1; }
command -v ctags >/dev/null 2>&1 || { echo >&2 "      Please install ctags to enable vim ctags."; exit 1; }
