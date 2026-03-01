#!/bin/bash

# 1. Build the binary for ARM64
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o notely .

# 2. Build the Docker image using that binary
docker build -t sanghunpark0628/notely:latest . --platform=linux/amd64
