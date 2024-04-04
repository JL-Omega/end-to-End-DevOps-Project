pipeline {
    agent any
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    stages {
        stage('Example') {
            steps {
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"
            }
        }
    }
}





// pipeline {
//     agent any
//     environment { 
//         IMAGE_NAME = "ic-webapp"
//         IMAGE_TAG = "1.0.0"
//         DOCKER_IMAGE_NAME = "${IMAGE_NAME}:${IMAGE_TAG}"
//         DOCKERHUB_USERNAME = credentials("docker_hub_username")
//         DOCKERHUB_PASSWORD =credentials("docker_hub_password")
//     }

//     stages {

//         stage('Create the ip_address_pool') {
//             input {
//                 message "Should we skip the stage?"
//                 ok "Confirm"
//                 // submitter "alice,bob"
//                 parameters {
//                     booleanParam(name: 'SKIP_STAGE', defaultValue: true, description: 'Set to yes to skip the stage')
//                 }
//             }
//             when {
//                 expression { return params.SKIP_STAGE == null } 
//             }
//             steps {
//                 echo "Value of SKIP_STAGE: ${params.SKIP_STAGE}"
//                 // sh "ansible-playbook ansible_playbook.yml --tags ip_address_pool"
//             }
//         }

//         stage('Build the IC-GROUP webapp image') {
//             steps {
//                 sh "docker build -t ${DOCKER_IMAGE_NAME} ."
//             }
//         }
//         // stage('Test the IC-GROUP webapp image') {
//         //     steps {
//         //         sh """
//         //         docker rm -f ${IMAGE_NAME} || true
//         //         docker run --name ${IMAGE_NAME} -d -p 8082:8080 ${DOCKER_IMAGE_NAME}
//         //         sleep 5
//         //         curl http://localhost:8082 | grep -i 'ic group'
//         //         """
//         //     }
//         // }
//         // stage('Release the image to the DockerHub') {
//         //     steps {
//         //         sh """
//         //         docker tag ${DOCKER_IMAGE_NAME} ${DOCKERHUB_USERNAME}/${DOCKER_IMAGE_NAME}
//         //         docker push ${DOCKERHUB_USERNAME}/${DOCKER_IMAGE_NAME}
//         //         """
//         //     }
//         // }
//         // stage('Ping the ansible hosts') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags ping-hosts"
//         //     }
//         // }
//         // stage('Install packages') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags install-packages"
//         //     }
//         // }
//         // stage('Install kubernetes for python') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags kubernetes-for-python"
//         //     }
//         // }
//         // stage('Create the IC-GROUP webapp namespace') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags ic-group-namespace"
//         //     }
//         // }
//         // stage('Create the IC-GROUP ingress') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags ic-webapp-ingress"
//         //     }
//         // }
//         // stage('Create the postgres service') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags postgres-service"
//         //     }
//         // }
//         // stage('Create the odoo service') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags odoo-service"
//         //     }
//         // }
//         // stage('Create the pgadmin service') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags pgadmin-service"
//         //     }
//         // }
//         // stage('Create the ic-webapp service') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags ic-webapp-service"
//         //     }
//         // }
//         // stage('Create the postgres deployment') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags postgres-deployment"
//         //     }
//         // }
//         // stage('Create the pgadmin deployment') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags pgadmin-deployment"
//         //     }
//         // }
//         // stage('Create the ic webapp deployment') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags ic-webapp-deployment"
//         //     }
//         // }
//         // stage('Create the odoo deployment') {
//         //     steps {
//         //         sh "ansible-playbook ansible_playbook.yml --tags odoo-deployment"
//         //     }
//         // }
       
//     }
// }