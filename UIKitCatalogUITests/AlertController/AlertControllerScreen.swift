//
//  AlertControllerScreen.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

class AlertControllerScreen {
        
    func navigateBackToHomeScreen(){
        XCTContext.runActivity(named: "Navigate back to home screen") { _ in
            AlertControllerMainLocators.navigateBackUICatalogButton.element.firstMatch.tap()
        }
    }
    
    //MARK:- Alert controller Main Page
    func tapAlertController(){
        XCTContext.runActivity(named: "Tap Alert Controller") { _ in
            AlertControllerMainLocators.alertControllerText.element.firstMatch.tap()
        }
    }
    
    func validatePresenceOfAlertStyleOptions(){
        XCTContext.runActivity(named: "Validate presence of alert style options") { _ in
            for alert in AlertStyleLocators.allCases{
                XCTAssert(alert.element.firstMatch.waitForExistence(timeout: 5))
            }
        }
    }
    
    func validatePresenceOfActionSheetOptions(){
        XCTContext.runActivity(named: "Validate presence of Action Sheet options") { _ in
            for actionSheet in ActionSheetStyleLocators.allCases{
                XCTAssert(actionSheet.element.firstMatch.waitForExistence(timeout: 5))
            }
        }
    }
    
    //MARK:- Alerts
    
    
    
    //MARK:- Action Sheets
    
    
    
    
    
    
    
}
