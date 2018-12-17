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
            sh 'mvn clean install -DskipTests'
            
                     /*env.JAVA = "${tool 'JAVA_1.8'}"
          checkout scm
          def mvnHome = tool 'maven-3'
          def JavaHome = tool 'JAVA_1.8' */
         }
         }
         }
      stage('Docker Build') {
        steps {
           script {
             sh 'sudo docker build -t smithasrikanth/my-app-1.0-snapshot .'
             sh 'sudo docker images'
        
             sh "sudo docker login -u=$env.username -p=$env.password"
             
            sh 'sudo docker push smithasrikanth/my-app-1.0-snapshot'
           }
        }
      }
       stage('Docker run') {
        steps {
           script {
             sh 'sudo docker run -p 3020:8080 -d smithasrikanth/my-app-1.0-snapshot'
           }
        }
       }
          }
      }
               
