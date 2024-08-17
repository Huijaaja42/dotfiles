if status is-interactive
    set -g fish_greeting
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx BAT_THEME tokyonight_night
    set -gx fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"

    starship init fish | source

    function last_history_item; echo $history[1]; end
    abbr -a !! --position anywhere --function last_history_item

    if not set -q TMUX
        tmux a -t default || tmux
    end

    zoxide init fish | source
end
