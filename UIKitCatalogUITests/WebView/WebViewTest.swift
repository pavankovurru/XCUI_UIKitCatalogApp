//
//  WebViewTest.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/18/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

class WebViewTests: XCUIBaseTest {
    
    let webViewScreen = WebViewScreen()
    
    func testWebViewContent() {
        webViewScreen.tapWebView()
        webViewScreen.validateWebViewTitle()
        webViewScreen.validateWebViewContent()
        app.performAccessibilityAudit()
    }
    
    
}
