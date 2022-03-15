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
                    docker run --rm --name project-website-container2 --detach -p 84:80 techwonder/project-website:latest
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
            stage('Deploy to external Webserver') {
            steps {
                sshagent(credentials: ['web-server-master-jenkins']) {
                sh """
                  ssh -o StrictHostKeyChecking=no ubuntu@138.68.188.91
                  """
                    }
                }
            }
            
        }
    }

