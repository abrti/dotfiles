# CONFIG.FISH

# PROMPT ────────────────────────────────────────────────────────────
function fish_prompt
    if [ $status -eq 0 ]
        set_color green
    else
        set_color red
    end
    printf '█ %s%s%s > ' \
    	(set_color cyan) (prompt_pwd) (set_color normal)
end

# MISC ──────────────────────────────────────────────────────────────
set fish_greeting
set PATH "$PATH:$HOME/.config/scripts"
