#!groovy

// This Jenkinsfile is used to build, test, and generate code coverage for an iOS project
// If you want to use this Jenkinsfile with your own project you'll need to make some changes:
// 1. Change the following variables to match your project
def xcodeproj = 'code history.xcodeproj' // Path to the xcodeproj
def xcarchive_name = "code history.xcarchive" // Name of the archive to build
def build_scheme = 'code history' // Scheme to build the app
def test_scheme = 'code history' // Scheme to build tests
def simulator_device = 'iPhone 12' // Name of the device type to use for tests
// 2. If you want to upload builds to a server, update the buildURL variable and uncomment the scp command under stage('Save')

// Configure Jenkins to keep the last 200 build results and the last 50 build artifacts for this job
properties([buildDiscarder(logRotator(artifactNumToKeepStr: '50', numToKeepStr: '200'))])

node {
    def startTime = System.currentTimeMillis()
    // def buildURL = "https://localhost:8080/builds/ios"
    // def branchNameForURL = env.BRANCH_NAME.replaceAll("/", "-")

    {
        stage('Check project') {
            // if (sendStartNotification()) {
            //     slackSend channel: slackChannel, color: colorForBuildResult(currentBuild.getPreviousBuild()), message: slackMessagePrefix() + " Started (<${env.BUILD_URL}|Open>)"
            // }

            checkout scm
            
            // Delete and recreate build directory
            dir('build') {
                deleteDir()
            }

            sh "mkdir -p build"
        }

        stage('Build') {
            wrap([$class: 'AnsiColorBuildWrapper', 'colorMapName': 'XTerm']) {
                // Just build for the example project
                // We can't archive because there's no code signing set up
                // Set up a development team and code signing to archive an ipa
                sh "xcrun xcodebuild -scheme '${build_scheme}' -destination 'name=iPhone 7' clean build | tee build/xcodebuild.log | xcpretty"

                // Uncomment this when building a project with code signing set up
                /*sh "xcrun xcodebuild -scheme '${build_scheme}' archive -archivePath 'build/${xcarchive_name}' | tee build/xcodebuild.log | xcpretty"
                sh "xcrun xcodebuild -exportArchive -exportOptionsPlist exportOptions.plist -archivePath 'build/${xcarchive_name}' -exportPath build"
                dir('build') {
                    sh "zip -qr 'Jenkins-iOS-Example-${env.BUILD_NUMBER}.zip' '${xcarchive_name}'"
                    sh "mv 'Jenkins iOS Example.ipa' 'Jenkins iOS Example-${branchNameForURL}.ipa'"
                }*/
            }
        } 
    }
}