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
    stage('Pipeline snippet generator') {
        xcodeBuild appURL: '', assetPackManifestURL: '', buildDir: '', bundleID: '', bundleIDInfoPlistPath: '', cfBundleShortVersionStringValue: '', cfBundleVersionValue: '', cleanBeforeBuild: false, cleanResultBundlePath: false, configuration: 'Release', developmentTeamID: '', developmentTeamName: '', displayImageURL: '', fullSizeImageURL: '', ipaExportMethod: 'ad-hoc', ipaName: '', ipaOutputDirectory: '', keychainId: '', keychainPath: '', keychainPwd: <object of type hudson.util.Secret>, logfileOutputDirectory: '', provisioningProfiles: [[provisioningProfileAppId: '', provisioningProfileUUID: '']], resultBundlePath: '', sdk: '', signingMethod: 'readFromProject', symRoot: '', target: '', thinning: '', xcodeProjectFile: '', xcodeProjectPath: '', xcodeSchema: '', xcodeWorkspaceFile: '', xcodebuildArguments: ''
    }
    // stage('Analytics') {

    //     parallel Coverage: {
    //         // Generate Code Coverage report
    //         sh '/usr/local/bin/slather coverage --jenkins --html --scheme TimeTable TimeTable.xcodeproj/'

    //         // Publish coverage results
    //         publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'html', reportFiles: 'index.html', reportName: 'Coverage Report'])


    //     }, Checkstyle: {

    //         // Generate Checkstyle report
    //         sh '/usr/local/bin/swiftlint lint --reporter checkstyle > checkstyle.xml || true'

    //         // Publish checkstyle result
    //         step([$class: 'CheckStylePublisher', canComputeNew: false, defaultEncoding: '', healthy: '', pattern: 'checkstyle.xml', unHealthy: ''])
    //     }, failFast: true|false   
    // }

    // stage ('Notify') {
    //     // Send slack notification
    //     slackSend channel: '#my-team', message: 'Time Table - Successfully', teamDomain: 'my-team', token: 'my-token'
    // }
}
