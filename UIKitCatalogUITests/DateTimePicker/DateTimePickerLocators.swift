//
//  DatePickerLocators.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/19/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

enum DateTimePickerMainLocators: String {
    
    case datepicker = "0"
    case hourPicker = "1"
    case minutePicker = "2"
    case AmPmPicker = "3"
    case navigateBackUICatalogButton = "UIKitCatalog"
    case datePickerText = "Date Picker"
    
    
    
    var element: XCUIElement{
        switch self {
        case .datepicker,.hourPicker,.minutePicker,.AmPmPicker:
            return XCUIApplication().pickerWheels.element(boundBy: Int(self.rawValue)!)
        case .navigateBackUICatalogButton:
            return XCUIApplication().buttons[self.rawValue]
        case .datePickerText:
            return XCUIApplication().staticTexts[self.rawValue]
            
        }
    }
}
