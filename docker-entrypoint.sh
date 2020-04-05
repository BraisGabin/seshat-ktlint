#!/usr/bin/env bash

# Exit immediately on non-zero return codes.
set -e

cd "${GITHUB_WORKSPACE}"

ktlint -F
