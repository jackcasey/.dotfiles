PSORG=$PS1;
if [ -n "${BASH_VERSION}" ]; then
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

    source ${DIR}/symbols.sh

    # Flags
    : ${display_no_upstream=true}
    : ${display_tag=true}
    : ${display_tag_name=true}
    : ${two_lines=true}
    : ${finally=$PROMPT_BASE}
    : ${use_color_off=false}

    PS2="${yellow}→${reset} "

    source ${DIR}/base.sh
    function bash_prompt() {
        PS1="$(build_prompt)"
    }

    PROMPT_COMMAND=bash_prompt
fi
