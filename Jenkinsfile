pipeline {
    agent any

    environment {
        ENVIRONMENT = "dev" // Default environment
    }

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'test'], description: 'Choose environment')
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out source code..."
                checkout scm
            }
        }

        stage('Build Docker Images') {
            steps {
                echo "Building Docker containers for ${params.ENVIRONMENT} environment..."
                sh "docker-compose -f docker-compose.${params.ENVIRONMENT}.yml build"
            }
        }

        stage('Run Docker Containers') {
            steps {
                echo "Running Docker containers for ${params.ENVIRONMENT} environment..."
                sh "docker-compose -f docker-compose.${params.ENVIRONMENT}.yml up -d"
            }
        }

        stage('Verify') {
            steps {
                echo "Listing running Docker containers..."
                sh "docker ps"
            }
        }
    }

    post {
        always {
            echo "Cleaning up..."
            sh "docker-compose -f docker-compose.${params.ENVIRONMENT}.yml down"
        }
    }
}



