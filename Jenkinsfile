pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'mustafa333500/my-web-app'
        REGISTRY_CREDS = credentials('docker-hub-creds')
    }

    stages {
        stage('Build Image') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE:latest .'
                }
            }
        }

        stage('Push to Hub') {
            steps {
                script {
                    sh 'echo $REGISTRY_CREDS_PSW | docker login -u $REGISTRY_CREDS_USR --password-stdin'
                    sh 'docker push $DOCKER_IMAGE:latest'
                }
            }
        }

        stage('Deploy to K8s') {
            steps {
                sh 'kubectl apply -f kubernetes/'
                
                // Force a restart so K8s pulls the new image
                sh 'kubectl rollout restart deployment/web-app-deployment'
            }
        }
    }
}
