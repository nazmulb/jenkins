pipeline {
    agent {
        docker {
            image 'node:9.8.0'
            args '-p 7777:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'bash ./jenkins/test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh 'bash ./jenkins/deploy.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'bash ./jenkins/kill.sh'
            }
        }
    }
}