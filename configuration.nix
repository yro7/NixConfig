set-option -sa terminal-overrides ",xterm*:Tc"
set -g mouse on

unbind C-b
set -g prefix C-Space
bind C-Space send-prefix

# Start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1
set-window-option -g pane-base-index 1
set-option -g renumber-windows on


# Use Alt+ZQSD (WASD) keys without prefix key to switch panes
bind -n M-q select-pane -L
bind -n M-d select-pane -R
bind -n M-z select-pane -U
bind -n M-s select-pane -D

# Use Alt+Arrow Keys keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D


# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window


bind c killp
bind Tab split-window -v -c "#{pane_current_path}"
bind ':' split-window -h -c "#{pane_current_path}"

# Plugin section

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'dreamsofcode-io/catppuccin-tmux'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-sidebar'
set -g @catppuccin_flavour 'mocha'

set -g @sidebar-tree 'e'


run '~/.tmux/plugins/tpm/tpm'
