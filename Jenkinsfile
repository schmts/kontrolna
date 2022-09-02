pipeline {
    
    agent any

    stages {
        agent {
                docker { image 'python:latest' }
        stage('Build') {
            
            }
            steps {
                sh 'python -m py_compile app.py'
                //stash(name: 'compiled-results', includes: '*.py*')        //////////UNSTASH ME LATER
            }
        }
        stage('Package') {
		
            steps {			
                echo 'Pakiramo.'
            }
        }
        stage('Push') {
		
            steps {			
                echo 'Potiskamo.'
            }
        }
      
        stage('Deploy') {
		
            steps {			
                echo '...in nazadnje razmescujemo...'
            }
        }
    }
}
