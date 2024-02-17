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
                withCredentials([string(credentialsId: '279824249008', variable: 'AWS_ACCESS_KEY_ID'), 
                       string(credentialsId: '279824249008', variable: 'AWS_SECRET_ACCESS_KEY')]) {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
