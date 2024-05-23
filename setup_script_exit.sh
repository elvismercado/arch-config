#!/bin/bash

# Handle the exit status of a script
# Just prints if script executed successfully or prints the exit status

# Setup these 2 lines in your script at the top
# `source setup_script_exit.sh`
# `setup_script_exit`


setup_script_exit() {
  log_exit() {
    local exit_status="$?"
    if [ $exit_status -eq 0 ]; then
      echo "Script exited successfully."
    else
      echo "Script exited with an error (Exit Status: $exit_status)."
    fi
  }

  trap log_exit EXIT # associate EXIT signal with log_exit function

  set -e # exit immediately if any command fails
}
