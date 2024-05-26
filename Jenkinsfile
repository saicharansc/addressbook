pipeline {
    agent none


    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "mymaven"
    }


    stages {
        stage('Compile') {
	     agent {label "linux_slave"}

	    steps {
               echo "compiling teh code"
                sh "mvn compile"
            }
        }
        stage('UnitTest') {
	    agent any 
            steps {
               echo "Test teh code"
                sh "mvn test"
            }
        }
        post {
            always{
                junit 'target/surefire-reports/*.xml'

            }
        }
    }
        stage('Package') {
	    agent any
            steps {
               echo "Package teh code"
                sh "mvn package"
            }
        }
    }
