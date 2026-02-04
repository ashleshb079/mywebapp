pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/ashleshb079/mywebapp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("mywebapp:latest")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh "docker rm -f mywebapp || true"
                    docker.run("mywebapp:latest", "-d -p 80:80 --name mywebapp")
                }
            }
        }
    }
}
