pipeline {
        agent any
        stages {
            stage('Build') {
                steps {
                  sh """
                    docker build -t techwonder/project-website:latest .
                      """
                }
            }
            stage('Login') {
                    steps {
                    withCredentials([string(credentialsId: 'dockerhub-jenkinsMaster', variable: 'DockerHubPwd2')]) {
                        sh """
                        docker login -u techwonder -p ${DockerHubPwd2}
                          """
                    }
                }
            }
            stage('push') {
                    steps {
                      sh """
                      docker push techwonder/project-website:latest
                         """
                }
            }
            stage("Run") {
                steps {
                  sh """
                    docker run --name project-website-container --detach -p 84:80 techwonder/project-website:latest
                    """

                }
            }
            stage('Test') {
                steps {
                    sh """
                      curl localhost:84
                      """
                }
            }

        }
    }

