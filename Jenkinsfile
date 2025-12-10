pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building application...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                sh './scripts/deploy.sh'
            }
        }
    }
}
