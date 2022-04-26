pipeline {
    agent none

    environment {
        DOTNET_CLI_HOME = "/tmp/dotnet_cli_home"
    }

    stages {
        stage('Build and test node') {
            agent {
                docker "node:17-bullseye"
            }
            steps {
                dir('DotnetTemplate.Web') {
                    echo 'Building..'
                    sh 'npm install'
                    sh 'npm run build'
                    sh 'npm t'
                    sh 'npm run lint'
                }
            }
        }
        stage('Build and test dotnet') {
            agent {
                docker "mcr.microsoft.com/dotnet/sdk:6.0"
            }
            steps {
                sh 'dotnet build'
                sh 'dotnet test'
            }
        }
    }
}
