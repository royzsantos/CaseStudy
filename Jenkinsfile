pipeline {
    agent any 
    stages {
        stage('SCM Checkout') { 
            steps {
				git 'https://github.com/royzsantos/CaseStudy'
            } 
        }
        stage('Compile') {
        	steps {
        		bat 'mvn compile'
        	}
        }
        
    }
} 