#!/bin/bash
set -ex

npm start &
sleep 1
echo $! > .pidfile

echo 'Now...'
echo 'Visit http://localhost:7777 to see your Node.js application in action.'