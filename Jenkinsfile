pipeline {
    agent any
    environment { 
        IMAGE_NAME = "ic-webapp"
        IMAGE_TAG = "1.0.0"
        DOCKER_IMAGE_NAME = "${IMAGE_NAME}:${IMAGE_TAG}"
        DOCKERHUB_USERNAME = credentials("docker_hub_username")
        DOCKERHUB_PASSWORD =credentials("docker_hub_password")
    }

    stages {

        stage('Build the IC-GROUP webapp image') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}