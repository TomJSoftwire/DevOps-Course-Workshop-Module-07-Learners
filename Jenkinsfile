pipeline {
    agent none

    stages {
        stage('Build and test node') {
            agent {
                docker "node:17-bullseye"
            }
            steps {
                dir('DotnetTemplate.Web') {
                    echo 'Building..'
                    npm install
                    npm run build
                    npm t
                    npm run lint
                }
            }
        }
        stage('Build and test dotnet') {
            agent {
                docker "mcr.microsoft.com/dotnet/sdk:6.0"
            }
            steps {
                dotnet build
                dotnet test
            }
        }
    }
}
