# Add custom paths to PATH variable
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH=$HOME/Desktop/Hackas/magalucloud/mgc_cli:$PATH
export PATH="$PATH:/usr/lib/flutter/bin"
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export PATH="$JAVA_HOME/bin:$PATH"


# Set Oh My Zsh location and terminal type
export ZSH="$HOME/.oh-my-zsh"
export TERM=xterm-256color

# Set theme for Zsh
ZSH_THEME="pmcgee"

# Set plugin list
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

# Enable Oh My Zsh
source $ZSH/oh-my-zsh.sh

# User environment settings
export SSH_CONFIG="~/.ssh/config"
export TERMINAL=alacritty
export TEXINPUTS=.:./**:
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Initialize pyenv if it's installed
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# Add additional paths
export PATH=$PATH:~/.aspera/connect/bin/
export PATH="/usr/lib/flutter/bin:$PATH"

# Aliases
alias reset_monitor='feh --bg-fill /home/kant/.config/i3/clovis.jpg'
alias get_idf='. $HOME/esp/esp-idf/export.sh'
alias copy='echo $1 | xclip -sel clip'
alias rotina_ic='/home/kant/.myScripts/rotinaIC.sh'
alias django_commands='/home/kant/.myScripts/django.sh'
alias set_hora='sudo timedatectl set-ntp true'
alias monitoria='cd unicamp/monitoria/mc102-s2-2024'
alias compile_latex='/home/kant/.myScripts/compile_latex.sh'
alias venv_python='source venv/bin/activate'
alias esc_capslock='setxkbmap -option caps:swapescape'

# Initialize LaTeX directories and symbolic links
alias init_latex='function _init_latex() {
    param="${1:-main}"
    echo "Criando diretório .latex_$param..."
    mkdir ".latex_$param"

    echo "Copiando arquivos PDF..."
    cp ~/.myScripts/.latex/*.pdf ".latex_$param/$param.pdf"

    echo "Copiando arquivos TEX..."
    cp ~/.myScripts/.latex/*.tex ".latex_$param/$param.tex"

    echo "Criando links simbólicos para o PDF..."
    ln -s ".latex_$param/$param.pdf" "$param.pdf"

    echo "Criando links simbólicos para o TEX..."
    ln -s ".latex_$param/$param.tex" "$param.tex"

    echo "Processo concluído!"
}; _init_latex'

alias fancontrol="function _fancontrol(){
  hwmon_dir=\$(ls /sys/devices/platform/asus-nb-wmi/hwmon/ | head -n 1);
  if [[ \$1 == '--auto' ]]; then
    sudo tee /sys/devices/platform/asus-nb-wmi/hwmon/\$hwmon_dir/pwm1_enable <<< 2;
  elif [[ \$1 == '--max' ]]; then
    sudo tee /sys/devices/platform/asus-nb-wmi/hwmon/\$hwmon_dir/pwm1_enable <<< 0;
  fi
}; _fancontrol"

