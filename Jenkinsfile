pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/wpatterson134/eks2.git'
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps {
                withCredentials(credentialsId: '279824249008') {
                        sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}
