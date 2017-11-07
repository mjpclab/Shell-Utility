getGitCurrentBranch() {
	branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null);
	if [ -n "$branch" ]; then
		result="($branch)";
	fi
	
	echo "$result"
}

PS1=$PS1'$(getGitCurrentBranch) '

