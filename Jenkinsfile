#!groovy
pipeline {
	agent any
  stages {
  	stage('Poetry Install') {
    	agent {
      	any {
        	image 'jenkins_docker'
        }
      }
      steps {
      	sh 'docker images'
	      }
    }
   stage('Docker Build') {
    agent any
    	steps {
      	sh 'docker build -t shanem/spring-petclinic:latest .'
      }
    }
  }
}


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
