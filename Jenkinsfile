#!groovy

pipeline {
	agent any
  stages {
  	stage('Install') {
    	agent {
      	any {
        	image 'custom_docker'
        }
      }
      steps {
      	sh 'docker images'
      }
    }
    stage('Docker Build') {
    	agent any
      steps {
      	sh 'docker build -t krushna2500/jenkins_docker:v2 .'
      }
    }
    stage('Docker Push') {
    	agent any
      steps {
      	withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push krushna2500/jenkins_docker:v2'
        }
      }
    }
  }
}
