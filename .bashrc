#!/bin/bash
export PATH="/usr/local/texlive/2014/bin/x86_64-darwin:$PATH"
export INFOPATH="/usr/local/texlive/2014/texmf-dist/doc/info:$INFOPATH"
export MANPATH="/usr/local/texlive/2014/texmf-dist/doc/man:$MANPATH"

# configure virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

export C_INCLUDE_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/libxml2:$C_INCLUDE_PATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

GRADLE_HOME=/opt/local/share/java/gradle

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

export JAVA_HOME=$(/usr/libexec/java_home)

export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

shopt -s globstar

alias vim='/usr/local/opt/macvim/MacVim.app/Contents/MacOS/Vim'
alias vi="vim"
alias ls='ls -G'
alias ll="ls -alrth"
alias git="hub"
alias ebook-converter="/Applications/calibre.app/Contents/MacOS/ebook-convert"
alias rm="rm -i"
