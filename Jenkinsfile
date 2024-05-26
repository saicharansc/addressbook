pipeline {
    agent none

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        maven "mymaven"
    }
    stages {
        stage('Compile') {
            agent any
            steps {
                script{
                    echo "Compiling the code"
                    sh "mvn compile"
                }
                
            }   
        }
        stage('UnitTest') { 
            agent any
            steps {
                script{
                    echo "RUNNING THE TC"
                    sh "mvn test"
                }
                }
            
            post{
                always{
                    junit 'target/surefire-reports/*.xml'
                }
            }
            
        }
        stage('Package') { 
            agent any
            steps {
                script{
			echo "PACKAGING THE CODE"
			sh "mvn package"
                }
                }
                
            }

            
        }
    }
