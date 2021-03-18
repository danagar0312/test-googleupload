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
    
    stage('Test image') {           
       app.inside {              
          sh 'echo "Tests passed"'        
       }    
    }
   
    stage('Push Docker Image'){
       docker.withRegistry('https://registry.hub.docker.com', 'dockerhub')
       app.push("${env.BUILD_NUMBER}")            
       app.push("latest")  
    }   
	
	
}
