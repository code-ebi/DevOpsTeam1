pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
              sh """
                docker build -t project-website .
                  """
            }
        }
        stage("Run") {
            steps {
              sh """
                docker run -p 84:80 -d project-website
              """
         
            }
        }
    }
}
