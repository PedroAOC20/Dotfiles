if not pgrep -u $USER ssh-agent >/dev/null
    eval (ssh-agent -c)
end

ssh-add ~/.ssh/id_ed25519 2>/dev/null
