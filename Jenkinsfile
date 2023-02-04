pipeline {
    agent any
    tools {
        maven 'maven_3_8_7'
        jdk 'oracle-7u80'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/AymenOpenGod/DevopsProjectJEMS.git']])
                sh './mvnw package'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t fathallahaymen/jemspetclinic .'
                }
            }
        }
        stage('Push Image to Hub') {
            steps {
                script {
                    sh 'docker login -u fathallahaymen -p Aymen@123'
                    sh 'docker push fathallahaymen/jemspetclinic'
                }
            }
        }
        
        
    stage('Deploy to k8s') {
      steps {
          script {
            sh 'ssh -o StrictHostKeyChecking=no  vagrant@10.0.0.10 kubectl create -f /home/vagrant/DevopsProjectJEMS/deployment-service.yml'
          }
      }
    }
    

    
    
    }
}
