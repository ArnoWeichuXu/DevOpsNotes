#!/bin/bash

set -e

# since nginx occupies 80 port, we stop nginx so we can proceed.
sudo service stop nginx | cat

kind create cluster --config config/kind-config.yaml
