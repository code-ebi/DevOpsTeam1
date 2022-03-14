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
            stage('Deploy to external Webserver') {
            steps {
                def dockerRun = 'docker run -p 6060:6060 -d --name website techwonder/project-website:latest'
                sshagent(['DevOps-server']) {
                sh """
                  ssh -o StrictHostKeyChecking=no -l ssh root@178.128.42.64 ${dockerRun}
                  """
                    }
                }
            }
            
        }
    }

