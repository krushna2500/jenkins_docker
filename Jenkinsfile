pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('My_Dockerhub')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t krushna2500/jenkins_docker:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push krushna2500/jenkins_docker:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
