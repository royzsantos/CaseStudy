pipeline {
    agent any 
    stages {
        stage('SCM Checkout') { 
            steps {
				git 'https://github.com/royzsantos/CaseStudy'
            } 
        }
        stage('Build') {
        	steps {
        		bat 'mvn compile'
        	}
        }
        stage('Unit Test') {
        	steps {
        		bat 'mvn test'
        	}
        }
        stage('Code Quality') {
        	steps {
        		bat 'mvn sonar:sonar'
        	}
        }        
    }
} 