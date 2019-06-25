node {
	def server
	def buildInfo
	def rtMaven
	
	stage ('Clone') {
		git url: 'https://github.com/royzsantos/CaseStudy.git'
	}
	
	stage ('Artifactory Configuration') {
		server = Artifactory.server 'Artifactory'
		
		rtMaven = Artifactory.newMavenBuild()
		rtMaven.tool = 'Maven'
		rtMaven.deployer releaseRepo: 'libs-release-local', snapshotRepo: 'libs-snapshot-local', server: server
		rtMaven.resolver releaseRepo: 'libs-release', snapshotRepo: 'libs-snapshot', server: server
		rtMaven.deployer.deployArtifacts = false
		
		buildInfo = Artifactory.newBuildInfo()		
	}    
	
}