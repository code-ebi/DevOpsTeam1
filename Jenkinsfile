pipeline {
        agent any
        stages {
            stage('Build') {
                steps {
                  sh """
                    docker build -t project-website:v1.0.5 .
                      """
                }
            }
            stage("Run") {
                steps {
                  sh """
                    docker run -d --name sixth-container -p 84:80 project-website:v1.0.5
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
