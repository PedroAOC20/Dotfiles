if status is-interactive
    fastfetch
end

# =============
# Bem-vindo
# =============
set --erase fish_greeting

# ===============
# inicializadores
# ===============
starship init fish | source

alias spf superfile
