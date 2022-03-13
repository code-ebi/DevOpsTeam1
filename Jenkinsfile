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
                docker run --rm project-website
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
