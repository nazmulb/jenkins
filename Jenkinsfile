pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                timeout(time: 2, unit: 'MINUTES') {
                    retry(5) {
                        sh 'bash ./learning/flakey-deploy.sh'
                    }
                }
            }
        }
    }
}