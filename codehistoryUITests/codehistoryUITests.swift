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
        

        let okayButton = app.buttons["Okay let's go!"]
        let okayLabel = app.segmentedControls.buttons["Okay let's go!"]
        
        if okayButton.isSelected {
            XCTAssertTrue(okayLabel.exists)
                
            okayButton.tap()
            XCTAssertTrue(okayLabel.exists)
        }

                    
                
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
