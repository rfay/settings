#!/bin/bash

set -x
set -o errexit

rm -f /usr/local/bin/ddev
brew unlink ddev
brew link ddev
