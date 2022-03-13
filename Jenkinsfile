pipeline {
        agent any
        stages {
            stage('Build') {
                steps {
                  sh """
                    docker build -t project-website:v1.0.4 .
                      """
                }
            }
            stage("Run") {
                steps {
                  sh """
                    docker run -d --name fifth-container -p 84:80 project-website:v1.0.4
                    """

                }
            }
            stage('Test') {
                steps {
                    sh """
                      curl localhost:80
                      """
                }
            }

    }
}
