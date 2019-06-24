pipeline {
    agent any 
    stages {
        stage('Build') {
        	steps {
    			bat 'mvn clean'
        		bat 'mvn compile'
        		bat 'mvn test-compile'
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
        stage('Upload') {
        	steps {
        		bat 'mvn install'
        	}
        }
    }
} 