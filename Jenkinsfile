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
            sh 'sudo apt-get update -y'
            sh 'sudo apt-get install openjdk-8-jdk -y'
            sh 'sudo apt-get install maven -y'
           /*sh 'sudo mvn clean install'
                     /*env.JAVA = "${tool 'JAVA_1.8'}"
          checkout scm
          def mvnHome = tool 'maven-3'
          def JavaHome = tool 'JAVA_1.8' */
         }
         }
         }
          }
      }
               
