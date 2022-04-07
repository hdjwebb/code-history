#!groovy

node {

    stage('DeviceCompute') {

        // echo "PATH is: $PATH"

        // CLI DeviceCompute

        sh  '''
            curl -X 'POST' -d '{"capabilities":{"alwaysMatch":{"apple:ios:setup":{},"apple:osBuild":{"program":"iOS"},"platformName":"iOS"},"firstMatch":[{}]},"sessionCreationTimeout":3600000,"addCapabilities":{}}' -H 'Cookie: acack=DAWTKNV323952cf8084a204fb20ab2508441a07d02d3f237080c6153afddff7f40c265e5d4b6c9614ac0ee063214f37a297bd6efde69547a74dc27a2dcee79fec05cb86bc39d2548eeb3bf6b3277404271eed0b79c68902c897e9c568e5b0a567d3cc3ec47ee419920efb59a4528bc5930933bc8bc1e8ce929400bd43e98af5fecd8b6c7ca469c6e6711dbb25066ba86b2060bca311a11c876a1ad78b99f0b8a996dffef7f1680b573be19192cc782ca56598a33f10eda3eb71cac2a65389afbad77aa1b355fbe045df4f637c52ed13cf11e8d31bb407d21ce6852c3962151cb491bf4eab316477e11ff6c383ecc6b861e0aaf6a7acb47d5ec2f8c09ed88f73747d8ec40e01fecdb574b1e2ad77101c14543bfdfbc971e51468762b067ce58680d1953fcb252fded26051ea5a63062f66003981cd8372bb2cb797a58990188d8a326f78dea78af88f973aec0a389d582fdac54ffb9b342ab76e9a3d7863a6236ae3e0617a948d4c388b5d3cd7447b0b38109b2fb9b44585a47V3' -H 'Request-Timeout-Ms: 7199999' -H 'User-Agent: devicecompute' -H 'Version: 5.18.3' -H 'X-Apple-Request-Uuid: 0c108294-d1bf-4bc2-b4a0-4ab471087f65' -H 'X-Trieste-Command-Uuid: d63ee84d-8a5d-459e-bad6-59c0ad48cf91' 'https://api-int.devicecompute.apple.com/session'
            '''
        
        // sh  '''
        //     devicecompute session create --ios --setup
        //     devicecompute session exec nvram boot-args="serial=3 debug=0x14e amfi_unrestrict_task_for_pid=1 amfi_allow_any_signature=1 cs_enforcement_disable=1 amfi_get_out_of_my_way=1 camSuspend=0 agm-genuine=1 usb_standard_mode_timeout=0"
        //     '''
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