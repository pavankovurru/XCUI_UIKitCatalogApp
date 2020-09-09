//
//  XCUIBaseTest.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

class XCUIBaseTest: XCTestCase{
    
    var app =  XCUIApplication()
    
    override func setUp() {
        
        super.setUp()
        continueAfterFailure = false
        
        //Handling system alerts
        addUIInterruptionMonitor(withDescription: "Single Button Alert") { (alert) -> Bool in
            print("************  In Single button alert Handler **********")
            //Handling alert with one button
            if alert.buttons.count == 1 {
                if alert.buttons.element(boundBy: 0).exists {
                    alert.buttons.element(boundBy: 0).tap()
                    return true
                }
            }
            return false
        }
        
        addUIInterruptionMonitor(withDescription: "Alert with two buttons.") { (alert) -> Bool in
            print("************  In Two Button Atert Handler **********")
            //Handling alert with 1+ buttons, clicking on the second button
            let button = alert.buttons.element(boundBy: 1)
            if button.exists {
                button.tap()
                return true
            }
            return false
        }
        
        app.launch()
        app.launchArguments = ["enable-testing"]
        
    }
    
    override func tearDown() {
        app.terminate()
        super.tearDown()
    }
    
}
