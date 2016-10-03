if ! (timeout 2 ssh-add -l >/dev/null 2>&1 || [ "$?" = "1" ]); then
	echo "Using default SSH agent socket"
	export SSH_AUTH_SOCK=~/.ssh/agent
fi
