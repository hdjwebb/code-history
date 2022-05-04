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
        stage('For Fix') {
            when {
                branch 'fix-*'
            }
            steps {
                // Build Project
                echo "Hello"
                // sh 'xcodebuild -scheme "code history" -destination generic/platform=iOS build'
            }  
        }
        stage('For PR') {
            when {
                branch 'PR-*'
            }
            steps {
                echo "This onlt runs for PR's"
            }  
        }

    }
}