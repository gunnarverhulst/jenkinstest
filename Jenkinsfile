pipeline {
    agent any
    tools {
        maven 'maven 3.9.6'
    }
    stages {
        stage('Build Maven Project'){
            steps{
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/gunnarverhulst/jenkinstest']])
                bat 'mvn clean install'
            }
        }
        stage('Test Application'){
            steps {
                bat 'mvn test'
            }
        }
        stage('Build Docker Image'){
            steps {
                script{
                    bat 'docker build -t root2codegunz/jenkinstest .'
                }
            }
        }
        stage('Push docker image to dockerhub'){
            steps {
                script {
                    bat 'docker login -u root2codegunz -p Nuke202400'
                    bat 'docker push root2codegunz/jenkinstest'
                }
            }
        }
        stage('Deploy to k8s'){
            steps {
                script {
                    kubernetesDeploy (configs: 'k8sdeploymentservice.yml', kubeconfigId: 'k8sconfigpwd')
                }
            }
        }
    }
}