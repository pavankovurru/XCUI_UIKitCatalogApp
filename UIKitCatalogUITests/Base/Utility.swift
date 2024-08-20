//
//  Utility.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

extension XCUIBaseTest {
    
    //MARK:- Scrolling
    func scrollToElementIfElementIsNotHittable(_ element: XCUIElement, maxScrolls: Int){
        for _ in 0..<maxScrolls {
            if element.isHittable {
                return
            } else {
                let startCoord = app.windows.firstMatch.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.3)) // Half way accross the screen and 30% from top
                let endCoord = app.windows.firstMatch.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.8)) // Half way accross the screen and 80% from top=
                startCoord.press(forDuration: 0.01, thenDragTo: endCoord)
            }
        }
    }
    
    func scrollToElementIfElementIsNotPresentInView(_ element: XCUIElement, maxScrolls: Int){
        for _ in 0..<maxScrolls {
            if isElementPresentInView(element: element) {
                return
            } else {
                let startCoord = app.windows.firstMatch.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.3)) // Half way accross the screen and 30% from top
                let endCoord = app.windows.firstMatch.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.8)) // Half way accross the screen and 80% from top=
                startCoord.press(forDuration: 0.01, thenDragTo: endCoord)
            }
        }
    }
    
    // MARK:- Is element Present
    func isElementPresentInView(element: XCUIElement) -> Bool{
        return app.windows.firstMatch.frame.contains(element.frame)
    }
    
    // MARK:- Print app hierarchy
    func printAppHierarchy(){
        print(app.debugDescription)
    }
    
    // MARK:- Is test running on ipad
    func isIpad() -> Bool {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return true
        }
        return false
    }
    
    // MARK:- Change Device Orientation
    func changeDeviceOrientation(to orientation: UIDeviceOrientation) {
        
        let device = XCUIDevice.shared
        
        switch orientation {
        case .portrait:
            device.orientation = .portrait
        case .landscapeLeft:
            device.orientation = .landscapeLeft
        case .landscapeRight:
            device.orientation = .landscapeRight
        case .portraitUpsideDown:
            device.orientation = .portraitUpsideDown
        default:
            print("Unsupported orientation")
        }
    }
    
    // MARK:- ScreenShot
    func takeScreenshotOfMainWindow(screenshotName: String) {
        let screenshot = app.windows.firstMatch.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.name = screenshotName
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

