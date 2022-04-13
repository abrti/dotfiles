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
alias "hx" "helix"
