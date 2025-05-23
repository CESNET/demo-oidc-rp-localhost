#!/bin/bash

echo "Content-type: text/plain"
echo
env|sort|grep -P '(OIDC_|REMOTE_USER)'

