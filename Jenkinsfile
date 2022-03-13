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
                docker run --rm -it -p 84:80 -d project-website
              """
            }
        }
        stage('Deploy') {
            steps {
              echo """
                Deploying....
              """
            }
        }
    }
}
