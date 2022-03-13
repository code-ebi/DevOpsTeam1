pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'docker build -t project-website .'
            }
        }
        stage('Run') {
            steps {
                echo 'Testing..'
                sh 'docker run -rm project-website'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
