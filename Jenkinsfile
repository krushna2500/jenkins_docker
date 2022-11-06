// pipeline {
//     agent any

//     stages {
//         stage('Build') {
//             steps {
//                 echo 'Building..'
//             }
//         }
//         stage('Test') {
//             steps {
//                 echo 'Testing..'
//             }
//         }
//         stage('Deploy') {
//             steps {
//                 echo 'Deploying....'
//             }
//         }
//     }
// }


pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'docker images'
                sh 'docker ps'
            }
        }
    }
}
