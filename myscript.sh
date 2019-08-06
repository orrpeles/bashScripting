#!/bin/bash
#reference: https://arachnoid.com/linux/shell_programming.html
#test if there is a file in current directory ending with .sh
#execute within same buffer using :w !sh or :w !bash or :w | !bash %
#reference: https://vi.stackexchange.com/questions/10209/execute-bash-script-from-vim

if test -e .
then
	echo 'yes'
else
	echo 'false'
fi

