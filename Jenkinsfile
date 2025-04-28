pipeline {
    agent any
    environment {
        IMAGE_NAME = "chetanzope39/demo"
    }
    stages {
        stage('Build') {
            steps {
                echo "Building the application..."
                sleep 10
            }
        }
        stage('Test') {
            steps {
                echo "Testing the application..."
                sleep 30
            }
        }
        stage('Docker Build') {
            steps {
                echo "Building Docker image..."
                script {
                    app = docker.build("${IMAGE_NAME}")
                }
            }
        }
        stage('Docker Push') {
            steps {
                echo "Pushing Docker image to DockerHub..."
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dckr_pat_5Za6R4MAALYJXtT4hmQ2rLFaQPM') {
                        app.push("demo")
                        app.push("latest")
                    }
                }
            }
        }
    }
}
