#!/bin/bash
#Simple sanityCheck function and script. Checks the specified file is in the current directory. Intended to guard shell scripts against execution outside their own, intended directory.

#"$1" = File to check.
PWD_SanityCheck() {
#http://creativecommons.org/publicdomain/zero/1.0/
#To the extent possible under law, mirage335 has waived all copyright and related or neighboring rights to PWD_Sanity_Check.sh. This work is published from: United States.
	if [[ $(ls -ld ./"$1") ]]
	then
		echo -e '\E[1;32;46m Found file '"$1"', proceeding. \E[0m'
	else
		echo -e '\E[1;33;41m *DANGER* Did not find file '"$1"'! *DANGER* \E[0m'
		echo -e '\E[1;33;41m Aborting! \E[0m'
		exit
	fi
}

PWD_SanityCheck PWD_Sanity_Check.sh