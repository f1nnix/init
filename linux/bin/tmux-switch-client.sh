echo $1 > ~/Documents/0.log
tmux switch-client -t $(tmux ls | head -n $1 | tail -1 | grep -o "^[0-9a-Z]*")
