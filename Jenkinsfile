pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {	
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/varunsrinivas23/hello-world-war/'
            }
        }
	stage('Build') {
            steps {				
                sh 'mvn clean package'
	    }
	}
        stage('deploy') {
            steps {
	        sh 'sudo cp /var/lib/jenkins/workspace/multibranch_pipeline1_develop/target/hello-world-war-2.0.0.war /var/lib/tomcat9/webapps'
            }
        }
    }
}
