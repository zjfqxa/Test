pipeline {
  agent any
  stages {
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh '''echo test1
ls -la
pwd
echo --------'''
            echo 'test print message'
          }
        }
        stage('Test-New') {
          steps {
            sh 'echo test-new'
          }
        }
      }
    }
    stage('Build') {
      steps {
        sh 'test build'
        echo 'build'
      }
    }
  }
}