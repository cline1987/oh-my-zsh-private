# set PATH (default)
PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# set PATH so it includes user's private bin if it exists
if [[ -d "$HOME/bin" ]] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes anaconda's bin if it exists
if [[ -d "$HOME/anaconda2/bin" ]] ; then
    PATH="$HOME/anaconda2/bin:$PATH"
fi

# set MANPATH
if [[ -n $MANPATH ]] ; then
    MANPATH="/usr/local/man:$MANPATH"
else
    MANPATH="/usr/local/man"
fi

# set WORKON_HOME for python virtualenv
WORKON_HOME="$HOME/pyEnvs"
