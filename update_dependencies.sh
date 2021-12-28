#!/bin/bash

docker run --rm -u="1000" -w="/app" -v $(pwd):/app ruby bundle update
