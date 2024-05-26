pipeline {
    agent any

    tools
    {
        maven "mymaven"
    }

    stages {
        stage('Compile') {
            steps {
                script{

                    echo "COMPILING"
                    sh "mvn compile"
                }
                
            }   
        }
        stage('Test') {
            steps {
                script{
                    echo "RUNNING THE TESTCASES"
                    sh "mvn test"
                }
                }
            }            
        }
        stage('Packagee') {
            steps {
                script{
                    echo "PACKAGING THE CODE"
                    sh "mvn package"
                }  
            }  
        }
    }
}

