pipeline {
    agent any

    environment {
        AWS_HOST = "ec2-user@ec2-13-200-169-238"
        DEPLOY_ENV = "staging"
        IMAGE_TAG = "${BUILD_NUMBER}"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Venkatlm10/My-CI-CD-Project.git'
            }
        }

        stage('Build & Test') {
            steps {
                sh './scripts/test.sh'
            }
        }

        stage('Deploy to AWS EC2') {
            steps {
                sh "./scripts/restart.sh $AWS_HOST $DEPLOY_ENV $IMAGE_TAG"
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
