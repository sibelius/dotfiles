export PATH=$PATH:/Users/sibelius/android-sdks/platform-tools

export WEKAINSTALL="/Users/sibelius/weka-3-7-11"
export WEKAHOME="/Users/sibelius/weka-3-7-11"

export CLASSPATH=$CLASSPATH:$WEKAINSTALL/weka.jar

export ANDROID_HOME="/Users/sibelius/android-sdks"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

[[ -s ~/.bashrc ]] && source ~/.bashrc


export HISTFILESIZE=10000 # Record last 10,000 commands
export HISTSIZE=10000 # Record last 10,000 commands per session
export PATH=/usr/local/sbin:$PATH
