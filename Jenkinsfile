pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub-credentials')
        DOCKER_IMAGE = "your-dockerhub-username/nginx-app"
        AWS_HOST = "ec2-user@your-ec2-public-ip"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/your-repo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build & Push') {
            steps {
                script {
                    sh """
                        docker build -t $DOCKER_IMAGE:${BUILD_NUMBER} .
                        echo $DOCKER_HUB_CREDENTIALS_PSW | docker login -u $DOCKER_HUB_CREDENTIALS_USR --password-stdin
                        docker push $DOCKER_IMAGE:${BUILD_NUMBER}
                    """
                }
            }
        }

        stage('Deploy to AWS EC2') {
            steps {
                script {
                    sh """
                        ssh -o StrictHostKeyChecking=no $AWS_HOST \\
                          "docker pull $DOCKER_IMAGE:${BUILD_NUMBER} && \\
                           docker stop nginx-app || true && \\
                           docker rm nginx-app || true && \\
                           docker run -d --name nginx-app -p 80:80 $DOCKER_IMAGE:${BUILD_NUMBER}"
                    """
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
