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
                bat 'docker build -t mywebapp:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                // Remove old container if exists
                bat 'docker rm -f mywebapp || true'
                
                // Run new container, mapping host port 80
                bat 'docker run -d -p 80:80 --name mywebapp mywebapp:latest'
            }
        }
    }
}
