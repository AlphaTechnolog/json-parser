#!/bin/bash

echo "Moving the binary to /usr/bin..."
echo "(using sudo to execute: cp -r ./src/json-parser /usr/bin/json-parser)..."
sudo cp -r ./src/json-parser /usr/bin/json-parser
sudo chmod -R 777 /usr/bin/json-parser
echo "Done, type json-parser to start"
