pipeline {
  agent any
    stages {
       stage('CodeCheckOut') {
         steps {
            script { 
               checkout scm
               /*def mvnHome = tool 'maven-3'
               def javaHome = tool 'JAVA_1.8' */
                  }
             }
            }
        stage('Build') {
        steps {
           script {
            sh 'sudo apt update'
            sh 'sudo apt install openjdk-8-jdk'
            sh 'sudo apt policy maven'
            sh 'sudo apt install maven'
          /*  sh 'sudo yum -y install maven'
            sh 'sudo mvn clean install'
          /*env.JAVA = "${tool 'JAVA_1.8'}"
          checkout scm
          def mvnHome = tool 'maven-3'
          def JavaHome = tool 'JAVA_1.8' */
         }
         }
         } 
        }
      }
               
