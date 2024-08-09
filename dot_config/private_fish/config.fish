if status is-interactive
    set -g fish_greeting
    set -gx EDITOR nvim
    set -gx VISUAL nvim

    starship init fish | source

    #alias vim "nvim"

    function last_history_item; echo $history[1]; end
    abbr -a !! --position anywhere --function last_history_item

    if not set -q TMUX
        pfetch
    end

    zoxide init fish | source
end
