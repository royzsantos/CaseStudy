node {
	def server
	def buildInfo
	def rtMaven
	
	stage ('Clone') {
		cleanWs()
		git url: 'https://github.com/royzsantos/CaseStudy.git'
	}
	
	stage ('Build') {
		server = Artifactory.server 'Artifactory'
		
		rtMaven = Artifactory.newMavenBuild()
		rtMaven.tool = 'Maven'
		rtMaven.deployer releaseRepo: 'libs-release-local', snapshotRepo: 'libs-snapshot-local', server: server
		rtMaven.resolver releaseRepo: 'libs-release', snapshotRepo: 'libs-snapshot', server: server
		rtMaven.deployer.deployArtifacts = false
		
		buildInfo = Artifactory.newBuildInfo()		

		rtMaven.run pom: './pom.xml', goals: 'clean'
		rtMaven.run pom: './pom.xml', goals: 'compile'
		rtMaven.run pom: './pom.xml', goals: 'test-compile'
	}

	stage ('Unit Test') {
		rtMaven.run pom: './pom.xml', goals: 'test'
	}
	
	stage ('Code Quality') {
		rtMaven.run pom: './pom.xml', goals: 'sonar:sonar'
	}
	
	stage ('Upload') {
		rtMaven.run pom: './pom.xml', goals: 'install', buildInfo: buildInfo
		rtMaven.deployer.deployArtifacts buildInfo
		server.publishBuildInfo buildInfo
	}
	
	stage ('Deploy') {
		echo currentBuild.fullProjectName
		bat 'deploy.bat'
	}
	
}