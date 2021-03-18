node{
    def app
    def registry = 'pingintelligence/googleupload-image'
    def registryCredential = 'dockerhub-id'
    stage("SCM Checkout"){
	checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github_id', url: 'https://github.com/danagar0312/test-googleupload']]])
    }
    
    stage('Prepare repository') {
        dir('googleupload-image/') {
	}
    }
	stage('Build Docker Image'){    		
       app = docker.build registry
    }
    
   
    stage('Push Docker Image'){
	    steps{
		    script{
			withDockerRegistry(credentialsId: 'dockerhub_id', url: 'https://registry.hub.docker.com') {
       				app.push("latest") 
		    }
	    }
   
	}
    }   
	
	
}
