# TODO : Add git, completion time, time, battery
# Reference : https://salferrarello.com/zsh-git-status-prompt/

# Functions

function reset() {
    echo "%{$reset_color%}"
}

# TODO : Add mint, kali, manjaro, cinnamon, opensuse,
function os_symbol() {
    case "$(uname -s)" in
    Linux*)
        if [ -e /etc/os-release ]; then
            source /etc/os-release
            case "$ID" in
            ubuntu)
                echo -e "\UF31C"
                ;;
            fedora)
                echo -e "\UF30A"
                ;;
            arch)
                echo -e "\UF303"
                ;;
            debian)
                echo -e "\UF306"
                ;;
            nix)
                echo -e "\UF313"
                ;;
            *)
                echo -e "\UF033D"
                ;;
            esac
        else
            echo -e "\UF033D"
        fi
        ;;
    Darwin*)
        echo "\UF302"
        ;;
    Windows*)
        echo "\uE70F"
        ;;
    *)
        echo "\UF109"
        ;;
    esac
}

# Prompt segments

function prompt_start() {
    echo "\U256D%F{red}\UE0B6%K{red}"
}

function prompt_host() {
    echo "%F{black}$(os_symbol) %m %F{red}%K{yellow}\UE0B0"
}

function prompt_directory() {
    echo "%F{black} \UF07C  %~ %F{yellow}%K{none}\UE0B0"
}

function prompt_devenv() {
    echo ""
}

function prompt_git() {
    echo ""
}

PS1="$(prompt_start)$(prompt_host)$(prompt_directory)%f%k "
