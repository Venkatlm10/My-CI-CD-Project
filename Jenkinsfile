pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/<your-username>/My-CI-CD-Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Nginx Docker image...'
                sh 'docker build -t my-ci-cd-project:nginx .'
            }
        }

        stage('Deploy Container') {
            steps {
                echo 'Deploying Nginx container on port 9090...'
                sh '''
                    docker stop nginx-ui || true
                    docker rm nginx-ui || true
                    docker run -d --name nginx-ui -p 9090:80 my-ci-cd-project:nginx
                '''
            }
        }
    }
}
