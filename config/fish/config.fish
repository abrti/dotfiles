# CONFIG.FISH

# PROMPT ────────────────────────────────────────────────────────────
function fish_prompt
    if [ $status -eq 0 ]
        set_color green
    else
        set_color red
    end
    printf '\u23fd %s%s%s \uf0da' \
    	(set_color cyan) (prompt_pwd) (set_color normal)
end

# MISC ──────────────────────────────────────────────────────────────
set fish_greeting
set PATH "$PATH:$HOME/.config/scripts"
set fish_color_valid_path
alias 'mkbuild' 'printf "#!/bin/sh\nCC=\'clang\'\nARGS=\'-Wall -Wextra -pedantic -xc --std=c99\'" > build.sh && chmod +x build.sh'
alias 'hx' 'helix'
alias 'll' 'exa -la'
alias 'la' 'exa -a'
alias 'ta' 'exa --tree -la'
alias 'py' 'python'
alias 'cat' 'bat'
