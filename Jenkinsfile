podTemplate(label: 'build', containers: [
    containerTemplate(name: 'docker', image: 'docker:dind', privileged: true, command: 'sh', ttyEnabled: true)
],
    volumes: [hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock')]
) {
    node('build') {
        stage('prepare') {
            checkout scm
        }

        stage('build') {
            withCredentials([usernamePassword(credentialsId: '70e941c6-4e5b-4097-a401-5142eedb17c5', passwordVariable: 'dockerKey', usernameVariable: 'dockerUser')]) {
                container('docker') {
                    sh('echo $dockerKey | docker login -u $dockerUser --password-stdin')
                    sh('sh build-all.sh')
                }
            }
        }
    }
}