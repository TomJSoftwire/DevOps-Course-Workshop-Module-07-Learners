pipeline {
    agent none

    stages {
        stage('Build and test node') {
            agent {
                docker "node:17-bullseye"
            }
            steps {
                echo 'Building..'
            }
        }
        stage('Build and test dotnet') {
            agent {
                docker "mcr.microsoft.com/dotnet/sdk:6.0"
            }
            steps {
                echo 'Testing..'
            }
        }
    }
}
