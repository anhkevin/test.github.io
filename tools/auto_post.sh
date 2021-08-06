#!/bin/bash
#
# Automation [Add & Update Post]

set -eu

#POST_DIR="_posts"
IS_POST=false

commit() {

	if [[ ! -z $(git status _posts -s) ]]; then
		git add _posts/
		IS_POST=true
	fi
	
	if [[ $IS_POST = true ]]; then
		msg="[Automation] Add & Update Post"
		git commit -m "$msg" -q
		echo $msg
	else
		echo "Nothing changed."
	fi
}

push() {
  git push origin master -q
  echo "[INFO] Published successfully!"
}

main() {
	echo "[START]"
	commit
	push
	echo "[END]"
}


main