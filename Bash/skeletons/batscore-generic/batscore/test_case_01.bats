setup() {
  # Load common settings
  . "X_BATSCORE_SETUP_PATH_X"
}

@test "X_TEST_NAME_X: X_TEST_DESCRIPTION_X" {
  # Force container run
  # if [[ ! -f '/run/.containerenv' ]]; then
  #   skip 'this case can only be tested inside a container'
  # fi

  run X_TEST_TARGET_FUNCTION_X
  assert_success
}
