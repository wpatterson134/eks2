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
               withCredentials([[
                class: 'AmazonWebServicesCredentialsBinding',
                credentialsId: 279824249008,
                accessKeyVariable: 'AWS_ACCESS_KEY',
                secretKeyVariable: 'AWS_SECRET_KEY'
            ]]) {
                    println 'Applying....'
                    sh "terraform apply --auto-approve"
                }
            }
        }
    }
}
