
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
        stage ('Build Stage (Docker)'){
            agent {label 'build-server'}
            steps {
                sh "docker build -t ghcr.io/sathapornp/first-ci-cd-2:v_1_0_2 ."
            }
        }
        stage('Deliver Docker Image'){
            agent {label 'build-server'}
            steps {
                withCredentials(
                    [usernamePassword](
                        credentialsId:'sathapornp'
                        passwordVariable:'githubPassword'
                        usernameVariable:'githubUser'
                    )  
                ){
                    sh "docker login ghcr.io -u ${env.githubUser} -p ${env.githubPassword}"
                    sh "docker push ghcr.io/sathapornp/first-ci-cd-2:v_1_0_2"
                }
            }
        }
    }
}