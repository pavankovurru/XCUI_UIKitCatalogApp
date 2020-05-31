//
//  AlertControllerLocators.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

enum AlertControllerMainLocators: String {
    
    case alertControllerText = "Alert Controller"
    case navBarTitle = "Alert Controllers"
    case navigateBackUICatalogButton = "UIKitCatalog"
    
    var element: XCUIElement{
        switch self {
        case .alertControllerText:
            return XCUIApplication().staticTexts[self.rawValue]
        case .navigateBackUICatalogButton:
            return XCUIApplication().buttons[self.rawValue]
        case .navBarTitle:
            return XCUIApplication().navigationBars.staticTexts[self.rawValue]
        }
    }
}


enum AlertStyleLocators: String,CaseIterable {
    
    case simpleText = "Simple"
    case okCancelText = "OK / Cancel"
    case threeButtonsText = "Three Buttons"
    case textEntryText = "Text Entry"
    case secureTextEntryText = "Secure Text Entry"
    
    var element: XCUIElement{
        switch self {
        case .simpleText, .okCancelText, .threeButtonsText, .textEntryText, .secureTextEntryText:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}


enum ActionSheetStyleLocators: String,CaseIterable {
    
    case confirmCancelText = "Confirm / Cancel"
    case destructiveText = "Destructive"
    
    var element: XCUIElement{
        switch self {
        case .confirmCancelText, .destructiveText:
            return XCUIApplication().staticTexts[self.rawValue]
        }
    }
}
