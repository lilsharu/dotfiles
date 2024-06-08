# Plugins
# Starship Prompt
if type -q starship
    starship init fish | source
end

# Zoxide
if type -q zoxide
    zoxide init fish | source
end

# Pyenv
if type -q pyenv
    pyenv init - | source
end
