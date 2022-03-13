pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
              sh """
                docker build -t project-website:v1.0.0 .
                  """
            }
        }
        stage("Run") {
            steps {
              sh """
                docker run --name first-container -d -p 84:80 project-website:v1.0.0
                """
         
            }
        }
    }
}
