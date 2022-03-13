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
                docker run --name mouse -i -t -p 84:80 -d project-website 60
                """
         
            }
        }
    }
}
