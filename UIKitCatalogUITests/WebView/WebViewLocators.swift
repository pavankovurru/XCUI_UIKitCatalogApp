//
//  WebViewLOcators.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

enum WebViewMainLocators: String {
    
    case webViewText = "Web View"
    case navigateBackUICatalogButton = "UIKitCatalog"
    
    var element: XCUIElement{
        switch self {
        case .webViewText:
            return XCUIApplication().staticTexts[self.rawValue]
        case .navigateBackUICatalogButton:
            return XCUIApplication().buttons[self.rawValue]
        }
    }
}


enum WebViewContentLocators: String {
    
    case webViewcontent = "This is HTML content inside a WKWebView ."
    
    var element: XCUIElement{
        switch self {
        case .webViewcontent:
            return XCUIApplication().otherElements[self.rawValue]
            
        }
    }
}
