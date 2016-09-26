# color list
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
 
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
 
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
 
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
 
txtrst='\e[0m'    # Text Reset

# changes home layout
#PS1='\u@\h\W'
#PS1='\[e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$'
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# env vars
DATE=$(date +"%m-%d-%Y")
TIME=$(date +"%r")

# bash functions
#print_before_the_prompt () {
#	printf "\n $bldblu%s $bldpur%s $bldpur%s $bldpur%s \n$txtrst" "$USER" "$PWD" "$DATE" "$TIME"
#}

printSymbolHelp () {
	echo "di = directory\n
			fi = file\n
			ln = symbolic link\n
			so = socket file\n
			bd = block(buffered) special file\n
			cd = character (unbuffered) special file\n
			or = symbolic link pointing to a non-existing file (orphan)\n
			mi = non-existent file pointed to by a symbolic link (visible when you type ls -l)\n
			ex = executable\n
			rpm = ls displays file ending in .rpm a specific color, or other .***\n"
}
#PROMPT_COMMAND=print_before_the_prompt

welcomeDillon () {
	color=$bldpur
	echo -e "${color}Welcome back, Dillon."
	echo
	echo "Today is $DATE, and the time is $TIME."
	echo
}

#invoke welcome msg
welcomeDillon

#ls
# *.rpm=90
alias ls='ls --color'
LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=1;92'
export LS_COLORS

#matrix
alias matrix='~/Downloads/.cmatrix-1.2a/./cmatrix'

#hello
alias hello='~/.scripts/./hello.sh'

#snow
alias snow='~/.scripts/./snow.sh'

#sl
alias sl='~/.scripts/sl-master/./sl'

#cowsay.py
alias cowsay='python ~/.scripts/cowsay-py-master/cowsay.py'

#backup
alias bk='~/.scripts/./bk.sh'
