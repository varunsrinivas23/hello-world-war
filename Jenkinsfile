pipeline {
    agent none
      stages {
        stage('checkout') {
	    agent {
	     label 'slavejenkin1'
            }
            steps {
		sh 'rm -rf hello-world-war'    
		sh 'git clone https://github.com/prabhakanth/hello-world-war/'
            }
        }
	stage('Build') {
	    agent {
	    label 'slavejenkin1'
            }
            steps {		
		sh 'mvn clean package'
	    }
	}
        stage('deploy') {
	     agent {
	     label 'slavejenkin1'
            }
            steps {
		    echo "good "
	            // sh 'sudo cp /var/lib/jenkins/workspace/multibranch_pipeline1_develop/target/hello-world-war-3.0.0.war /var/lib/tomcat9/webapps'//
            }
        }    
    }
}
