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
  }
}
