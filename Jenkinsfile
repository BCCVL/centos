node {

  // image name
  def imagename
  // information about the built image
  def img
  
  // fetch source
  stage('Checkout') {
    
    checkout scm
    
  }

  // build image
  stage('Build') {
    
    imagename = newImageTag('centos/centos7-epel')
    img = docker.build(imagename, '--pull --no-cache .')
      
  }

  // publish image to registry
  stage('Publish') {
      
    img.push()

    slackSend color: 'good', message: "New Image ${imagename}\n${env.JOB_URL}"
    
  }
    
}
