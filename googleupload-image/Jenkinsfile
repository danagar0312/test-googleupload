node{
    def app
    def registry = 'pingintelligence/googleupload-service'
    def registryCredential = 'dockerhub-id'
    stage("SCM Checkout"){
	checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github_id', url: 'https://github.com/danagar0312/test-googleupload']]])
    }
}
