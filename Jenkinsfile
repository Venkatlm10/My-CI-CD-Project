pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = credentials('dockerhub-credentials')
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
                // Run Maven build and tests
                sh 'mvn clean package'
                // Call your test helper script
                sh './scripts/test.sh'
            }
        }

        stage('Docker Build & Push') {
            steps {
                // Call your deploy helper script
                sh "./scripts/deploy.sh $DOCKER_IMAGE $IMAGE_TAG $DOCKER_HUB_CREDENTIALS_USR $DOCKER_HUB_CREDENTIALS_PSW"
            }
        }

        stage('Deploy to AWS EC2') {
            steps {
                // Use your restart helper script for deployment
                sh "./scripts/restart.sh $AWS_HOST $DOCKER_IMAGE $IMAGE_TAG"
            }
        }

        stage('Cleanup') {
            steps {
                // Optional cleanup stage
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
