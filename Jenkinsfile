pipeline {
        agent any
        stages {
            stage('Build') {
                steps {
                  sh """
                    docker build -t project-website:v1.0.6 .
                      """
                }
            }
            stage('Login') {
                    steps {
                    withCredentials([string(credentialsId: 'cd3ff8fc-e6f4-46ee-a3a6-819a5e5d6373', variable: 'dockerhub2')]) {
                        sh """
                        docker login -u techwonder -p ${dockerhub2}
                          """
                    }
                }
            }
            stage('push') {
                    steps {
                      sh """
                      docker psuh project-website:v1.0.6
                         """
                }
            }
            // stage("Run") {
                // steps {
                  // sh """
                    // docker run -d --name seventh-container -p 84:80 project-website:v1.0.6
                    // """

                // }
            // }
            // stage('Test') {
                // steps {
                    // sh """
                      // curl localhost:84
                      // """
                // }
            // }

        }
    }

