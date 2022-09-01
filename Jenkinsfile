pipeline {
    
    agent any

    stages {
        
        stage('Build') {
            
            steps { 
                echo 'Gradimo.'				
                //pip install -r requirements.txt
                
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
