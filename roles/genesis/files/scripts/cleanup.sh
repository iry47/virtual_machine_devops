#!/bin/bash

sudo chown -R $(whami) /home/packer/.cache/pip/http

pip3 uninstall -y ansible

apt-get -y autoremove --purge
apt-get clean

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync



