//
//  Utility.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/11/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

extension XCUIBaseTest {
    
    
    // MARK:- Waits
    
    
    //waitForExistence
    //    func waitforExistence(element: XCUIElement, waitTime: Double, file: String = #file, line: UInt = #line){
    //        let isElementPresent = element.waitForExistence(timeout: waitTime)
    //        if isElementPresent {
    //            XCTAssertTrue(element.exists)
    //        }
    //        else{
    //            let message = "Failed to find \(element) after 5 seconds."
    //            self.recordFailure(withDescription: message, inFile: file, atLine: Int(line), expected: true)
    //        }
    //    }
    
    
    //XCTestWaiter
    func waitForElementToAppear(_ element: XCUIElement, timeout: Double, file: String = #file, line: UInt = #line) -> Bool {
        let predicate = NSPredicate(format: "exists == true")
        let expectedExpectation = expectation(for: predicate, evaluatedWith: element,handler: nil)
        let result = XCTWaiter().wait(for: [expectedExpectation], timeout: timeout)
        return result == .completed
    }
    
    func waitForElementToAppearThenReturnElement(_ element: XCUIElement, timeout: Double, file: String = #file, line: UInt = #line) -> XCUIElement? {
        let predicate = NSPredicate(format: "exists == true")
        let expectedExpectation = expectation(for: predicate, evaluatedWith: element,handler: nil)
        let result = XCTWaiter().wait(for: [expectedExpectation], timeout: timeout)
        if result == .completed {
            return element
        } else {
            let message = "Failed to find \(element) after 5 seconds."
            self.recordFailure(withDescription: message, inFile: file, atLine: Int(line), expected: true)
            return nil
        }
    }
    
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
    
    
    // MARK:- ScreenShot
    func takeScreenshotOfMainWindow(screenshotName: String) {
        let screenshot = app.windows.firstMatch.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.name = screenshotName
        attachment.lifetime = .keepAlways
        add(attachment)
    }
    
    
    // MARK:- Print app hierarchy
    func printAppHierarchy(){
        print(app.debugDescription)
    }
    
    
    // MARK:- Is element Present
    func isElementPresentInView(element: XCUIElement) -> Bool{
        return app.windows.firstMatch.frame.contains(element.frame)
    }
    
}

