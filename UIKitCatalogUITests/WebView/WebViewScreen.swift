//
//  WebViewScreen.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

class WebViewScreen: XCUIBaseTest {
    
    //MARK:- Alert controller Main Page
    func tapWebView(){
        XCTContext.runActivity(named: "Tap WebView") { _ in
            WebViewMainLocators.webViewText.element.firstMatch.tap()
        }
    }
    
    func validateWebViewTitle(){
        XCTContext.runActivity(named: "Validate WebViewtitle") { _ in
            XCTAssertTrue(WebViewMainLocators.webViewText.element.firstMatch.waitForExistence(timeout: 5))
        }
    }
    
    func validateWebViewContent(){
        XCTContext.runActivity(named: "Validate WebView Content") { _ in
            XCTAssertTrue(WebViewContentLocators.webViewcontent.element.firstMatch.waitForExistence(timeout: 5))
        }
    }
    
    
}
