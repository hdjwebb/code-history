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
        
        // Check to see if a button exists
//        XCTAssert(app.buttons["1998"].exists, "1998 is not an option")
//        app.buttons["1998"].tap()
//        app.buttons["Next"].tap()

//        XCTAssert(app.buttons["Steve Jobs"].exists, "Steve Jobs is not an option")
//        XCTAssert(app.buttons["Python"].exists, "Python is not an option")
//        XCTAssert(app.buttons["Everest"].exists, "1998 is not an option")
//        XCTAssert(app.buttons["Pepino"].exists, "Pepino is not an option")
//        XCTAssert(app.buttons["5"].exists, "5 is not an option")
//        XCTAssert(app.buttons["14"].exists, "5 is not an option")
        for _ in 1...7 {
            if app.buttons["1998"].exists {
                app.buttons["1998"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["Simula"].exists {
                app.buttons["Simula"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["Tim Berners-Lee"].exists {
                app.buttons["Tim Berners-Lee"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["Everest"].exists {
                app.buttons["Everest"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["Pepino"].exists {
                app.buttons["Pepino"].tap()
                app.buttons["Next"].tap()
            }
            if app.buttons["5"].exists {
                app.buttons["5"].tap()
                app.buttons["Next"].tap()
                
            }
            if app.buttons["14"].exists {
                app.buttons["14"].tap()
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
