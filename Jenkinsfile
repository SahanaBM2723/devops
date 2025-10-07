pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Building the project..."
                sh 'echo Build completed'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'echo Tests passed'
            }
        }

        stage('Archive') {
            steps {
                echo "Archiving..."
            }
        }
    }
}


