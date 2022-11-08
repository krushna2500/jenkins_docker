#!groovy

pipeline {
	agent none
  stages {
  	stage('Install') {
    	agent {
      	docker {
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
      	sh 'docker build -t krushna2500/jenkins_docker:v1 .'
      }
    }
  }
}
