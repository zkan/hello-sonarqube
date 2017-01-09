#!/bin/bash

apt-get update
su ubuntu <<'EOF'
  wget -qO- https://get.docker.com/ | sh
EOF
curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
