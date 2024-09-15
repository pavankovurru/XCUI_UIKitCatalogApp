//
//  GenericLocators.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 9/15/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import XCTest

enum GenericLocators {
    
    case textFieldWithLabel(String, Int)
    case cellWithTextViewAndImage(String, String)
    case staticTextContainingPredicate(Int, NSPredicate)
    case siblingCellWithStaticText(String, String)
    case cellWithStaticTextAndButton(String)
    case descendantCellsWithStaticText(String, String)
    
    var element: XCUIElement{
        switch self {
        case let .cellWithStaticTextAndButton(text):
            return XCUIApplication().cells.containing(NSPredicate(format: "label CONTAINS[c] '\(text)'")).children(matching: .staticText).buttons.element
        case let .descendantCellsWithStaticText(text1, text2):
            return XCUIApplication().cells.containing(NSPredicate(format: "label CONTAINS[c] '\(text1)'")).staticTexts[text2].firstMatch
        case let .textFieldWithLabel(text, elementPosition):
            return XCUIApplication().cells.containing(NSPredicate(format: "label CONTAINS[c] '\(text)'")).children(matching: .textField).element(boundBy: elementPosition)
        case let .cellWithTextViewAndImage(text, image):
            return XCUIApplication().cells.containing(NSPredicate(format: "label CONTAINS[c] '\(text)'")).images[image]
        case let .staticTextContainingPredicate(text, predicate):
            return XCUIApplication().cells.containing(NSPredicate(format: "label CONTAINS[c] '\(text)'")).containing(predicate).firstMatch
        case let .siblingCellWithStaticText(text1, text2):
            return XCUIApplication().cells.containing(NSPredicate(format: "label CONTAINS[c] '\(text1)'")).children(matching: .staticText).element(matching: .staticText, identifier: text2).firstMatch
            
        }
    }
}

