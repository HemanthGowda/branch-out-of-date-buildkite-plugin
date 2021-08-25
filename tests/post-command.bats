#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Checks if the branch is up-to-date" {
  export BUILDKITE_PLUGIN_BRANCH_UP_TO_DATE_REMOTE="origin"
  export BUILDKITE_PLUGIN_BRANCH_UP_TO_DATE_BRANCH="main"

  stub git

  run "$PWD/hooks/post-command"

  assert_success
  assert_output --partial "HEAD from origin/main branch has been merged to this branch"
}
