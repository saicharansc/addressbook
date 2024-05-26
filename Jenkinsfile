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
                    echo "RUNNING THE Testcases"
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
			sshagent(['slave2'])
			echo " Executing the code "
			sh "scp  StrictHostKeyChecking=no server-script.sh ec2-user@172.31.6.225:/home/ec2-user"
			sh "scp  StrictHostKeyChecking=no  ec2-user@172.31.6.225 'bash server-script.sh'"
			echo "Packaging the code "
			sh "mvn package"

                }
                }
                
            }

            
        }
    }
