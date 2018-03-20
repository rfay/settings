#!/bin/bash

set -x
set -o errexit

rm -f /usr/local/bin/ddev
ln -s /usr/local/bin/ddev.link /usr/local/bin/ddev
