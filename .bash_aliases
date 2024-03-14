alias grb='gradle build && gradle --console plain -q run'
alias mvnjava="mvn package && java -cp target/Test-1.0-SNAPSHOT.jar com.mycompany.app.App"
alias javacall="javac -d ./target ./src/main/java/com/HttpServer/app/App.java && java ./src/main/java/com/HttpServer/app/App.java"

#ls

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#Tmux sessions startup
alias rpg='~/scripts/tmux_rpg.sh'
alias study='~/scripts/study_script.sh'
alias roda='~/scripts/roda-plug-dev.sh'
alias cheatsh='~/scripts/cheat.sh'

# Neovim
alias v="nvim"
alias suv="sudo -E -s nvim"

#bat
# alias  cat="bat"

#Fuzzy Finder
alias z='fzf --preview="if [ -d {} ]; then ls {}; elif file --mime --brief {} | grep -qE ''^image/''; then imgcat {}; else bat --style=numbers,changes --color=always {}; fi" --height=80%'

zv() {
    local file
    file=$(rg --files --ignore-file="$HOME/.rg_ignore" | z)
    [ -n "$file" ] && v "$file"
}

zcd() {
    local dir
    dir=$(find ~ -type d | grep -vFf "$HOME/.rg_ignore" | z)
    [ -n "$dir" ] && cd "$dir"
}
rsync-backup(){
    sudo rsync -aAXv --delete --dry-run --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/home/BiffJonas/repos/*--exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude="Downloads" --exclude=".VirtualBoxVMs"--exclude=".ecryptfs" / /mnt/backups
}

#Life Saver
alias TOGGLECAPS='xdotool key Caps_Lock'
