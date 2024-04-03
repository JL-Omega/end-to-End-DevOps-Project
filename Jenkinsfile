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
                sh "docker build -t ${DOCKER_IMAGE_NAME} ."
            }
        }
        stage('Test the IC-GROUP webapp image') {
            steps {
                sh """
                docker rm -f ${IMAGE_NAME} || true
                docker run --name ${IMAGE_NAME} -d -p 8082:8080 ${DOCKER_IMAGE_NAME}
                sleep 5
                curl http://localhost:8082 | grep -i 'ic group'
                """
            }
        }
        stage('Push the image to the DockerHub') {
            steps {
                sh """
                docker tag ${DOCKER_IMAGE_NAME} ${DOCKERHUB_USERNAME}/${DOCKER_IMAGE_NAME}
                docker push ${DOCKERHUB_USERNAME}/${DOCKER_IMAGE_NAME}
                """
            }
        }
        stage('Dep') {
            steps {
                echo 'Deploying....'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}