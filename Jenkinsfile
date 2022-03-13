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
                docker run --entrypoint "/bin/sh" -it alpine/git
              """
              sh """
              docker run -it -p 84:80 -d project-website /bin/bash
                """
         
            }
        }
    }
}
