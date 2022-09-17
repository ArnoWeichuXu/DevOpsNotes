#!/bin/bash
set -e

# Install go
snap install go --classic

export PATH=/snap/bin:$PATH

echo 'eval $(go env)' >> /home/arnoxu/.zshrc
echo 'export PATH=/snap/bin:$PATH' >> /home/arnoxu/.zshrc
echo 'export PATH=$GOPATH/bin:$PATH' >> /home/arnoxu/.zshrc

# Install kind
GO111MODULE="on" go get sigs.k8s.io/kind@v0.14.0

# Install kubectl
snap install kubectl --classic
