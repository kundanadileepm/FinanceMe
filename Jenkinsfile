pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                echo 'Cloning the repo'
                git branch: 'main', url: 'https://github.com/kundanadileepm/FinanceMe.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Packaging the code'
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image'
                sh 'docker build -t kundanadileepm/financeme:latest .'
            }
        }
        stage('Docker Login & Push') {
            steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
            sh "echo $PASS | docker login -u $USER --password-stdin"
            sh 'docker tag kundanadileepm/financeme:latest kundanadileepm/financeme:v1'
            sh 'docker push kundanadileepm/financeme:v1'
        }
    }
}
        stage('port expose'){
            steps{
                sh 'docker run -dt -p 8081:8081 --name c000 kundanadileepm/financeme:v1'
            }
        }   
    }
}
