<h1 align="center">
  IC-Group WebApp Deployment on k8s Bare-Metal <br>(NGINX Ingress Controller + MetalLB)
</h1>

![image](https://github.com/JL-Omega/end-to-End-DevOps-Project/assets/96908472/d974c453-5d17-4a27-bbf7-d7252e1dd719)

## Overview

This repository contains scripts and configurations for deploying the IC-Group web application using Docker, Ansible, and Jenkins. The deployment process involves building Docker images, configuring Kubernetes clusters, and orchestrating deployment tasks through Jenkins pipelines.

The IC-Group web application is a Flask-based web application designed to serve as a central hub for managing Odoo and pgAdmin within the IC-Group ecosystem, providing users with a seamless experience to interact with these essential tools.

### Integration with Odoo:

1. **Streamlined Access:** Users can access Odoo directly through the IC-Group web application, eliminating the need to switch between different interfaces or applications.
2. **Enhanced User Experience:** The web application offers a user-friendly interface for interacting with Odoo, simplifying navigation and task execution within the ERP system.
3. **Functionalities:** Users can leverage various functionalities offered by Odoo, including inventory management, sales, accounting, and more, all seamlessly integrated into the IC-Group web application.
4. **Data Synchronization:** The application ensures seamless data synchronization between Odoo and other components, maintaining consistency and accuracy across the ecosystem.

### Integration with pgAdmin:

1. **Database Management:** Users can utilize pgAdmin directly from the IC-Group web application to manage PostgreSQL databases effectively.
2. **Administrative Tasks:** pgAdmin integration enables users to perform administrative tasks such as database creation, table management, query execution, and user management.
3. **Web-Based Interface:** The web application provides a convenient web-based interface for interacting with pgAdmin, eliminating the need for separate installations or configurations.
4. **Security and Accessibility:** Users can securely access and manage PostgreSQL databases through pgAdmin, ensuring data integrity and accessibility within the IC-Group ecosystem.



## Prerequisites

- Docker installed
- Ansible installed
- Jenkins server set up
- Kubernetes cluster running on bare-metal servers.
- Ingress controller deployed in the cluster (In this case, Nginx Ingress controller is used).
- MetalLB installed in the cluster for Load Balancing.
- NFS server for persistent storage.

## Getting Started

To get started with the IC-Group web application deployment, follow these steps:

1. Clone this repository to your local machine:
 ```bash
   git clone https://github.com/JL-Omega/end-to-End-DevOps-Project.git
   ```
2. Ensure all prerequisites are met, including Docker, Ansible, Jenkins, and Kubernetes cluster setup.
3. Configure Ansible hosts and group variables according to the target environment.
4. Customize Jenkins pipeline parameters as needed.
5. Run the Jenkins pipeline to initiate the deployment process.

## Usage

### Configure Ansible Hosts and Group Variables:
1. Open the `ansible_hosts.yml` file.
2. Update the host configurations with the appropriate IP addresses and authentication credentials for the target environment (development or production).
3. Open the `group_vars` directory.
4. Update the `dev.yml` or `prod.yml` file with environment-specific configurations such as Ansible user credentials, Python interpreter path, etc.

### Customize Jenkins Pipeline Parameters:
1. Open the Jenkinsfile in the repository.
2. Navigate to the section where pipeline parameters are defined.
3. Modify the parameters as needed, such as DockerHub credentials, environment variables, etc.

### Run the Jenkins Pipeline:
1. Open your Jenkins server dashboard.
2. Navigate to the project that contains the Jenkins pipeline for the IC-Group web application deployment.
3. Trigger the pipeline manually or set up a schedule for automatic triggering.<br>
If the pipeline is successful, it will look like on the screenshot below:
![image](https://github.com/JL-Omega/end-to-End-DevOps-Project/assets/96908472/b1e629f3-dce9-45c8-95ab-cd85b5b75161)

### Monitor the Jenkins Console:
1. Once the pipeline is triggered, monitor the Jenkins console output for the progress of deployment tasks.
2. Pay attention to any errors or warnings that may occur during the deployment process.
3. Use the Jenkins logs to troubleshoot and address any issues that arise.

### Verify Successful Deployment:
1. After the Jenkins pipeline completes successfully, access the provided endpoints for the IC-Group web application.
2. Verify that the application is running as expected and that all functionalities are accessible.
3. Perform any necessary testing or validation to ensure the deployment is successful.


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

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests for any improvements or fixes.

## License

This project is licensed under the [MIT License](LICENSE).
