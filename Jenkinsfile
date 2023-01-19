pipeline {
    environment {
        registry = 'afarizahalim'
        imageName = 'test-python'
        registryCredential = 'dockerhub_id'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Building our image') {
            steps {
                script {
                    dockerImage = docker.build registry + '/' + imageName
                }
            }
        }
        stage('Deploy our image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push(":$BUILD_NUMBER")
                        dockerImage.push(":latest")
                    }
                }
            }
        }
        stage('Run our image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.run()
                    }
                }
            }
        }
        stage('Cleaning up') {
            steps {
                sh "docker rmi $registry + '/' + $imageName' + ':' + $BUILD_NUMBER"
            }
        }
    }
}