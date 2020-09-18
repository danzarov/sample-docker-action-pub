#!/bin/bash
set -e

echo "parameter passed through main.yml/action/dockerfile/entrypoint.sh is -> $1"

sample_value='some value for our sample.'

echo "::set-output name=placeholder_output1::$sample_value"

if [ -z "$my_secret_env_var" ]; then
  echo "my_secret_env_var is not set. Quitting."
  exit 1
fi

