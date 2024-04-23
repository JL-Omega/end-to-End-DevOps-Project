<h1 align="center">
  IC-Group WebApp Deployment on k8s Bare-Metal <br>(NGINX Ingress Controller + MetalLB)
</h1>

## Overview

This repository contains scripts and configurations for deploying the IC-Group web application using Docker, Ansible, and Jenkins. The deployment process involves building Docker images, configuring Kubernetes clusters, and orchestrating deployment tasks through Jenkins pipelines.

## Components

### Dockerfile

The Dockerfile defines the environment for running the IC-Group web application. It installs Python dependencies, sets environment variables, and exposes necessary ports.

### Ansible Playbook

The Ansible playbook orchestrates the deployment process on Kubernetes clusters. It handles tasks such as installing dependencies, configuring network components, and deploying application services.

### Ansible Hosts Configuration

Host configurations define the target environments for deployment, including IP addresses and authentication credentials.

### Group Variables

Group variables specify environment-specific configurations for development and production environments.

### Jenkins Pipeline

The Jenkins pipeline automates the deployment process, including building Docker images, testing, releasing to DockerHub, and orchestrating Ansible tasks.

## Usage

1. Configure Ansible hosts and group variables according to the target environment.
2. Customize Jenkins pipeline parameters as needed.
3. Run the Jenkins pipeline to initiate the deployment process.

## Prerequisites

- Docker installed
- Kubernetes cluster configured
- Ansible installed
- Jenkins server set up

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests for any improvements or fixes.

## License

This project is licensed under the [MIT License](LICENSE).
