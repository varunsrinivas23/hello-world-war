pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {	
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/lohitesh/hello-world-war/'
            }
        }
	stage('Build') {
            steps {				
                sh 'mvn clean package'
            }
        }
    }
}
