
pipeline {

    agent any

    environment {

        APP_NAME = "first-ci-cd"
    
    }
 
    stages {

        stage('Build Image' ) {

            steps {

                sh "echo ${env.APP_NAME}"
            }
        }
    }
}