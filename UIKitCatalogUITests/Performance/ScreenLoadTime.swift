//
//  ScreenLoadTime.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 9/15/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

final class ScreenLoadTime: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        super.setUp()
        app.launch()
    }

    override func tearDownWithError() throws {
        app.terminate()
        super.tearDown()
    }

    func testScreenLoadTime() throws {
        measureMetrics([XCTPerformanceMetric.wallClockTime], automaticallyStartMeasuring: false) {
          
            //Pre test setup - actions to be done to get to a screen should go here
            
            //Measure time
            startMeasuring()
            _ = app.navigationBars["NavigationBarTitle"].waitForExistence(timeout: 15)
            stopMeasuring()
        }
    }

   
}
