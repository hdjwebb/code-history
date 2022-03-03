#!groovy

node {

    stage('Checkout/Build/Test') {

        // Checkout files.
        checkout([
            $class: 'GitSCM',
            branches: [[name: 'main']],
            doGenerateSubmoduleConfigurations: false,
            extensions: [], submoduleCfg: [],
            userRemoteConfigs: [[
                name: 'github',
                url: 'https://github.com/hdjwebb/code-history'
            ]]
        ])

        // Build and Test
        sh 'xcrun xcodebuild -scheme "code history"  build  test -destination "platform=iOS Simulator,name=iPhone 12,OS=15.2" | /usr/local/bin/xcpretty -r junit'
        // sh 'xcodebuild -scheme "code history" -destination "name=iPhone 12" clean build | /usr/local/bin/xcpretty -r junit -o test-reports/reports.xml'
        // sh 'xcodebuild -alltargets -configuration Release build -allowProvisioningUpdates'

        // Publish test restults.
        step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: 'build/reports/junit.xml'])
    }

    // stage ('Notify') {
    //     // Send slack notification
    //     slackSend channel: '#my-team', message: 'Time Table - Successfully', teamDomain: 'my-team', token: 'my-token'
    // }
}
