alias c="clear"
alias p="git push"

if [ "$GITHUB_REPOSITORY" = "github/github" ]; then
  alias s="script/server --debug"
  alias t="bin/rails test"
  alias x="bin/rails test -n \"/(xxx|XXX)/\""
  alias gx='ag -i "^\\s*test \"xxx" ./test/'
  alias t-all="TEST_ALL_FEATURES=1 bin/rails test"
  alias mig="bin/rake db:migrate db:test:prepare"
fi