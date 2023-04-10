#!/bin/bash
# Build the Docker image
docker build -t test-ci .

# Authenticate with ECR
aws ecr get-login-password eu-north-1 | docker login --username AWS --password-stdin 6145-9234-5084.dkr.ecr.eu-north-1.amazonaws.com

# Tag the Docker image
docker tag test-ci:latest 6145-9234-5084.dkr.ecr.eu-north-1.amazonaws.com/test-ci:latest

# Push the Docker image to ECR
docker push 6145-9234-5084.dkr.ecr.eu-north-1.amazonaws.com/test-ci:latest
