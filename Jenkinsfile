#!groovy
pipeline {
	agent none
  stages {
  	stage('Poetry Install') {
    	agent {
      	docker {
        	image 'jenkins_docker'
        }
      }
      steps {
      	sh 'Poetry clean install'
      }
    }
  }
}
