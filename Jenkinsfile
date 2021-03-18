node{
    def app
    def registry = 'pingintelligence/googleupload-image'
    def registryCredential = 'dockerhub-id'
    stage("SCM Checkout"){
	checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github_id', url: 'https://github.com/danagar0312/test-googleupload']]])
    }
    
    stage('Prepare repository') {
        /* Copying the subdir to the parent */
        bat "cp -a googleupload-image/. ."
        /* Removing sub directory */
        bat "rm -rf googleupload-image/."
    }

    stage('Building image') {
        /* Building the docker image */
	    
	app = docker.build registry
	    
	} 
}
