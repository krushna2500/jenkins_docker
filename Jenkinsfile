#!groovy

pipeline {
	agent any
  stages {
  	stage('Install') {
    	agent {
      	any {
        	image 'jenkins_testing'
        }
      }
      steps {
      	sh 'docker images'
      }
    }
    stage('Docker Build') {
    	agent any
      steps {
      	sh 'docker build -t 192.168.181.139:8085/jenkins_testing:v1 .'
      }
    }
    stage('Test') {
    	agent any
      steps {
      	echo 'Empty'
      }
    }
    stage('Docker Push') {
    	agent any
      steps {
      	withCredentials([usernamePassword(credentialsId: 'Nexus', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        	sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push 192.168.181.139:8085/jenkins_testing:v1'
        }
      }	
    }
  }
}
