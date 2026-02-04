pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                // Clone your GitHub repo
                git branch: 'main', url: 'https://github.com/ashleshb079/mywebapp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build Docker image from Dockerfile
                sh 'docker build -t mywebapp:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                // Remove old container if exists
                sh 'docker rm -f mywebapp || true'
                
                // Run new container, mapping host port 80
                sh 'docker run -d -p 80:80 --name mywebapp mywebapp:latest'
            }
        }
    }
}
