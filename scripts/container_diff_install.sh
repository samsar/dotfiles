#!/bin/bash
set -euo pipefail

curl -LO https://storage.googleapis.com/container-diff/latest/container-diff-darwin-amd64 && \
sudo install container-diff-darwin-amd64 /usr/local/bin/container-diff
