//
//  DatePickerScreen.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/19/20.
//  Copyright © 2020 Apple. All rights reserved.
//


import XCTest

class DateTimePickerScreen: XCUIBaseTest {
    
    static let month = [1:"Jan",2:"Feb",3:"Mar",4:"Apr",5:"May",6:"June",7:"July",8:"Aug",9:"Sep",10:"Oct",11:"Nov",12:"Dec"]
    
    
    func navigateBackToHomeScreen(){
        XCTContext.runActivity(named: "Navigate back to home screen") { _ in
            AlertControllerMainLocators.navigateBackUICatalogButton.element.firstMatch.tap()
        }
    }
    
    func tapDatePicker(){
        XCTContext.runActivity(named: "Tap Date Picker") { _ in
            DateTimePickerMainLocators.datePickerText.element.firstMatch.tap()
        }
    }
    
    //MARK:- DATE AND TIME SETTERS
    
    func setDate(date: String){
        XCTContext.runActivity(named: "Set date") { _ in
            DateTimePickerMainLocators.datepicker.element.adjust(toPickerWheelValue: date)
        }
    }
    
    func setHour(hour: String){
        XCTContext.runActivity(named: "Set Hour") { _ in
            DateTimePickerMainLocators.hourPicker.element.adjust(toPickerWheelValue: hour)
        }
    }
    
    func setMinute(minute: String){
        XCTContext.runActivity(named: "Set minute") { _ in
            DateTimePickerMainLocators.minutePicker.element.adjust(toPickerWheelValue: minute)
        }
    }
    
    func setAmPm(amPm: String){
        XCTContext.runActivity(named: "Set Am/Pm") { _ in
            DateTimePickerMainLocators.AmPmPicker.element.adjust(toPickerWheelValue: amPm)
        }
    }
    
    
    //MARK:- DATE AND TIME GETTERS
    
    func getDate() -> String{
        XCTContext.runActivity(named: "get date") { _ in
            return DateTimePickerMainLocators.datepicker.element.value as! String
        }
    }
    
    func getHour() -> String{
        XCTContext.runActivity(named: "get Hour") { _ in
            return DateTimePickerMainLocators.hourPicker.element.value as! String
        }
    }
    
    func getMinute() -> String{
        XCTContext.runActivity(named: "get minute") { _ in
            return DateTimePickerMainLocators.minutePicker.element.value as! String
        }
    }
    
    func getAmPm() -> String{
        XCTContext.runActivity(named: "get Am/Pm") { _ in
            return DateTimePickerMainLocators.AmPmPicker.element.value as! String
            
        }
    }
    
    
    
    
}
