#!groovy

node {

    stage('DeviceCompute') {

        // echo "PATH is: $PATH"

        // CLI DeviceCompute
        sh  '''
            devicecompute session create --ios --setup
            devicecompute session exec nvram boot-args="serial=3 debug=0x14e amfi_unrestrict_task_for_pid=1 amfi_allow_any_signature=1 cs_enforcement_disable=1 amfi_get_out_of_my_way=1 camSuspend=0 agm-genuine=1 usb_standard_mode_timeout=0"
            '''
        // sh 'devicecompute session exec snapshottool golive 2'
        // sh 'devicecompute session reboot'
    }


    stage('Checkout/Build') {

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