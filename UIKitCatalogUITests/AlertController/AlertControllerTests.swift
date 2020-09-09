//
//  AlertControllerTests.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

class AlertControllerTests: XCUIBaseTest {
    
    let alertControllerScreen = AlertControllerScreen()
    
    func testAlertControllerLabels() {
        alertControllerScreen.tapAlertController()
        alertControllerScreen.validatePresenceOfAlertStyleOptions()
        alertControllerScreen.validatePresenceOfActionSheetOptions()
    }
    
}
