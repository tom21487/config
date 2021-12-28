# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Check if interactive shell
if [[ $- == *i* ]]; then
  fgRed=$(tput setaf 1);
  fgGreen=$(tput setaf 2);
  fgBlue=$(tput setaf 4);
  fgMagenta=$(tput setaf 5);
  fgYellow=$(tput setaf 3);
  fgCyan=$(tput setaf 6);
  fgWhite=$(tput setaf 7);
  fgBlack=$(tput setaf 0)
  bgRed=$(tput setab 1);
  bgGreen=$(tput setab 2);
  bgBlue=$(tput setab 4);
  bgMagenta=$(tput setab 5);
  bgYellow=$(tput setab 3);
  bgCyan=$(tput setab 6);
  bgWhite=$(tput setab 7);
  bgBlack=$(tput setab 0);
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tom/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tom/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tom/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tom/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PS1="\[\033[38;5;45m\][\W]\[$(tput sgr0)\] $ \[$(tput sgr0)\]"
