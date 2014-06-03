#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"

# Stop VM
cd cache && vagrant halt