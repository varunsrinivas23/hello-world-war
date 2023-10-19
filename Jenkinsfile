pipeline {
    agent {
        label 'slavejenkin2'
    }
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
        stage('tomcat installation') {
            steps {
                sh 'sh tomcat.sh'
                echo "tomcat installed"
            }
        }
        stage('deploy') {
            steps {
                echo "good"
                sh 'sudo cp /home/ubuntu/workspace/tomcatassign/target/hello-world-war-3.0.0.war /var/lib/tomcat9/webapps'
            }
        }
    }
}
