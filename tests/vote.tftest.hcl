run "init" {
  module {
    source = "./tests/setup"
  }
}
run "assert_vote_chart_version" {
  command = plan

  assert {
    condition     = helm_release.redis.version == "${run.init.redis_chart_version}"
    error_message = "Test failed: the attribute value was not as expected."
  }

}
run "assert_redis_chart_version" {
  command = plan

  assert {
    condition     = helm_release.vote.version == "${run.init.vote_chart_version}"
    error_message = "Test failed: the attribute value was not as expected."
  }
}
