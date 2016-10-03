if (timeout 2 ssh-add -l >/dev/null 2>&1 || [ "$?" = "1" ]) && \
   ! (SSH_AUTH_SOCK=~/.ssh/agent timeout 2 ssh-add -l >/dev/null 2>&1 || [ "$?" = "1" ]); then
	echo "Setting this SSH agent socket as default"
	ln -s -f "$SSH_AUTH_SOCK" ~/.ssh/agent
fi
