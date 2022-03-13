pipeline {
        agent any
        stages {
            stage('Build') {
                steps {
                  sh """
                    docker build -t project-website:v1.0.1 .
                      """
                }
            }
            stage("Run") {
                steps {
                  sh """
                    docker run -d --name second-container -p 84:80 project-website:v1.0.1
                    """

                }
            }
            stage('Test') {
                steps {
                    echo 'Testing ....'
                }
            }

    }
}
