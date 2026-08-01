pipeline {
    agent any 
    environment {
              AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
              AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
              AWS_DEFAULT_REGION    = 'ap-south-1'
              git_url = "https://github.com/pervinders/devops.git"
           }
        stages {
            stage("Terraform") {
                steps {
                 echo "Clonning Github URL"
                 sh "git clone ${env.git_url}"
                 sh "cd devops/terraform"
                 sh "terraform init"
                 sh "terraform plan"
                }
            }
            stage("Creating AWS infrastructure") {
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
