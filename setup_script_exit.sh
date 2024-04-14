#!/bin/bash

setup_script_exit() {
  log_exit() {
    local exit_status="$?"
    if [ $exit_status -eq 0 ]; then
      echo "Script exited successfully."
    else
      echo "Script exited with an error (Exit Status: $exit_status)."
    fi
  }

  trap log_exit EXIT

  set -e
}
