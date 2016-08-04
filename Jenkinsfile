import java.text.SimpleDateFormat
import java.util.Date

node {
    // fetch source
    stage 'Checkout'

    checkout scm

    // build image
    stage 'Build'

    def imagename = 'hub.bccvl.org.au/centos/centos7-epel'
    def img = docker.build(imagename)

    // publish image to registry
    stage 'Publish'

    def imagetag = date()
    img.push(imagetag)

    slackSend color: 'good', message: "New Image ${imagename}:${imagetag}"
}

@NonCPS
def date() {
    return new SimpleDateFormat("yyyy-MM-dd").format(new Date())
}
