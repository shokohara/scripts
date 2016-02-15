#/bin/bash -eu

for x in $(ls -d -1 $PWD/**)
do
	echo '============================'
	cd $x
	pwd
	REMOTES=$(git remote -v)
	if [[ $REMOTES == *https* ]]; then
		echo 'exists https'
	elif [[ $(git status --porcelain) == '' ]]; then
		echo 'uncommited'
	else
		if [[ $(git rev-parse --abbrev-ref HEAD) == *master* ]]; then
			echo 'current branch contains master'
			git fetch
			git rebase origin/$(git rev-parse --abbrev-ref HEAD) || git rebase --abort
		else
			DATE=$(date -u +%FT%TZ | sed 's/://g' | sed 's/-//g')
			git fetch
			git add .
			git rebase origin/$(git rev-parse --abbrev-ref HEAD) || git rebase --abort
			git commit -m "Halfway from `hostname` at $DATE"
			git push -u origin $(git rev-parse --abbrev-ref HEAD)
		fi

	fi
done
