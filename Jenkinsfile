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
                docker container run project-website -p 84:80 -d
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
