pipeline {
    agent any 
    stages {
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