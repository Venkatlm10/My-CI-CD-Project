pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "your-dockerhub-username/nginx-app"
        AWS_HOST = "ec2-user@your-ec2-public-ip"
        DEPLOY_ENV = "staging"
        IMAGE_TAG = "${BUILD_NUMBER}"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/your-repo.git'
            }
        }

        stage('Build & Test') {
            steps {
                sh 'mvn clean package'
                sh './scripts/test.sh'
            }
        }

        stage('Docker Build & Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials',
                                                  usernameVariable: 'DOCKER_USER',
                                                  passwordVariable: 'DOCKER_PASS')]) {
                    sh """
                        docker login -u $DOCKER_USER -p $DOCKER_PASS
                        docker build -t $DOCKER_IMAGE:$IMAGE_TAG .
                        docker push $DOCKER_IMAGE:$IMAGE_TAG
                    """
                }
            }
        }

        stage('Deploy to AWS EC2') {
            steps {
                sh "./scripts/restart.sh $AWS_HOST $DOCKER_IMAGE $IMAGE_TAG"
            }
        }

        stage('Cleanup') {
            steps {
                sh './scripts/cleanup.sh --force'
            }
        }
    }

    post {
        success {
            echo '✅ Deployment successful!'
        }
        failure {
            echo '❌ Deployment failed!'
        }
        always {
            echo 'Pipeline finished.'
        }
    }
}
