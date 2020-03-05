#!/bin/zsh

gitCurrentBranch=''
updateGitCurrentBranch() {
	local branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null);
	if [ -n "$branch" ]; then
		gitCurrentBranch=" ($branch)"
	else
		gitCurrentBranch=''
	fi
}

precmd() {
	updateGitCurrentBranch
	lf=$'\n'
	PS1="${lf}[%n@%m %~]${gitCurrentBranch}${lf}%# "
} 
