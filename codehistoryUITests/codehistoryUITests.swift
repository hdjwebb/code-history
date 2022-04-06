//
//  codehistoryUITests.swift
//  codehistoryUITests
//
//  Created by Henry Webb on 17/02/2022.
//

import XCTest

class codehistoryUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }


    func testGameStyleSwitch() {
        
        let app = XCUIApplication()
        app.windows.children(matching: .other).element.children(matching: .other).element.tap()
        app.buttons["Okay let's go!"].tap()
        
        for _ in 1...5 {
            if app.buttons["1"].exists {
                app.buttons["1"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["2"].exists {
                app.buttons["2"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["3"].exists {
                app.buttons["3"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["4"].exists {
                app.buttons["4"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["5"].exists {
                app.buttons["5"].tap()
                app.buttons["Next"].tap()
            }
        }
                
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 12.3, iOS 15.0, tvOS 15.0, watchOS 8.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
    
}
