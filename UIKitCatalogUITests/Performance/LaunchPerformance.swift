//
//  LaunchPerformance.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 9/15/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

final class LaunchPerformance: XCTestCase {
    
    let app = XCUIApplication()

    func testLaunchPerformance() throws {
            let option = XCTMeasureOptions()
            option.iterationCount = 10
        
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()], options: option) {
                XCUIApplication().launch()
            }
        }
    }

