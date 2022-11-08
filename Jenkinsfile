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
  }
}
