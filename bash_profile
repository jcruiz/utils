#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad

#sets up the prompt color (currently a green similar to linux terminal)
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

#enables color for iTerm
export TERM=xterm-color

#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'

git()
{
  if [ "$1" = "clean" ]
  then
     read -p "Are you sure? " -n 1 -r
     if [[ $REPLY =~ ^[Yy]$ ]]
     then
        # do dangerous stuff
    	echo $'\n'
	command git "$@"
     else
	echo $'\n' "canceled"
     fi
   else
      command git "$@"
   fi
}

rm()
{
  if [ "$1" = "-rf" ]
  then
     read -p "Are you sure? " -n 1 -r
     if [[ $REPLY =~ ^[Yy]$ ]]
     then
        # do dangerous stuff
    	echo $'\n'
	command rm "$@"
     else
	echo $'\n' "canceled"
     fi
   else
      command rm "$@"
   fi
}

#alias git-clean = 'echo "this command could erase everything on you dir, are you sure?"'
