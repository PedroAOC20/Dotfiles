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

set -gx EDITOR helix
set -gx VISUAL helix
