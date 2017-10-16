node ('docker') {

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

    imagename = "hub.bccvl.org.au/centos/centos7-epel:${dateTag()}"
    img = docker.build(imagename, '--pull --no-cache .')

  }

  // publish image to registry
  stage('Publish') {

    docker.withRegistry('https://hub.bccvl.org.au', 'hub.bccvl.org.au') {
        img.push()
    }

    slackSend color: 'good', message: "New Image ${imagename}\n${env.JOB_URL}"

  }

}
