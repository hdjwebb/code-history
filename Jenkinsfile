#!groovy


pipeline {
    agent { node { label 'main' } } 
    stages {
        stage('DeviceCompute') {
            steps {
                // Catch the Error!
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    // TODO:
                }
            }

        }

        stage('Build') {
            steps {
                // Catch the Error!
                catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    // Build Project
                    echo "Hello"
                    // sh 'xcodebuild -scheme "code history" -destination generic/platform=iOS build'
                }
            }  
        }

    }
}