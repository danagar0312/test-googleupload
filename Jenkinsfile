node{
    def app
    def registry = 'pingintelligence/googleupload-image'
    stage("SCM Checkout"){
	    checkout scm
    }
    
    stage('Switch to repository') {
        dir('googleupload-image/') {
	}
    }
	stage('Build Docker Image'){    		
       app = docker.build registry
    }
    
   
    stage('Push Docker Image'){
	    
   	docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_id'  ) {
            app.push("latest")
        }
    }
	
	
}
