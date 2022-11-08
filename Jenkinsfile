#!groovy

pipeline {
	agent any
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
    	agent docker
      steps {
      	sh 'docker build -t krushna2500/jenkins_docker:v1 .'
      }
    }
  }
}
