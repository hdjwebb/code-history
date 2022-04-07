#!groovy

node {
    stage('DeviceCompute') {
        // CLI DeviceCompute
        echo $PATH_SH
        // sh 'devicecompute'
        // sh 'session create --ios --setup  --build-train Sydney'

    }


    stage('Checkout/Build') {

        // Checkout files.
        // checkout([
        //     $class: 'GitSCM',
        //     branches: [[name: 'main']],
        //     doGenerateSubmoduleConfigurations: false,
        //     extensions: [], submoduleCfg: [],
        //     userRemoteConfigs: [[
        //         name: 'github',
        //         url: 'https://github.com/hdjwebb/code-history'
        //     ]]
        // ])

        // Build and Test
        // sh 'xcrun xcodebuild -scheme "code history"  build  test -destination "platform=iOS Simulator,name=iPhone 12,OS=15.2" | /usr/local/bin/xcpretty -r junit'
        // sh 'xcodebuild -scheme "code history" -destination "name=iPhone 12" clean build | /usr/local/bin/xcpretty -r junit -o test-reports/reports.xml'
        // sh 'xcodebuild -scheme "code history" -alltargets -configuration  Release build  -allowProvisioningUpdates'

        // Publish test restults.
        // step([$class: 'JUnitResultArchiver', allowEmptyResults: true, testResults: 'build/reports/junit.xml'])
    }

    stage('Test') {
        // sh 'xcrun xcodebuild -scheme "code history" test -destination "platform=iOS,id=00008101-001129EC3C00011E"'
    }

    // stage ('Notify') {
    //     // Send slack notification
    //     slackSend channel: '#my-team', message: 'Time Table - Successfully', teamDomain: 'my-team', token: 'my-token'
    // }
}