pipeline {
    agent any 
        stages {
            stage("Terraform") {
                steps {
                    echo "Checking out from the program"
                }
                steps{
                     echo "second step within program "
                      }
            }
            stage("Git checkout to branch") {
                steps {
                echo "On to the development stage"
                 }
            }
            stage("Testing") {
                 steps {
                echo "On to the Testing stage"
                    }
            }
            stage("Production") {
                steps {
                echo "Production Deployment in production"
                    }
            }
        }
    }
