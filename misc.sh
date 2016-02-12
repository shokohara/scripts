declare -a array hosts=("localhost")

git add . &&\
  git commit -m 'zshhistoryd' &&\
  git push ;\
  for x in $hosts
  do
    ssh $x "zsh -c \" source ~/.zshrc && git -C ~/.zsh_history.d pull\""
  done
