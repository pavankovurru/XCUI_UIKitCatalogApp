//
//  DatePickerTest.swift
//  UIKitCatalogUITests
//
//  Created by pavan Kovurru on 4/19/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import XCTest

class DateTimePickerTests: XCUIBaseTest {
    
    let dateTimePickerScreen = DateTimePickerScreen()
    
    func testDateTimePicker() {
        
        dateTimePickerScreen.tapDatePicker()
        
        
        let calendar = Calendar.current
        let day = calendar.component(.day, from: Date())
        let month = DateTimePickerScreen.month[calendar.component(.month, from: Date())]!
        
        let hour = "11"
        let minute = "30"
        let dayAndMonth = "\(month) \(day)"
        
        
        dateTimePickerScreen.setDate(date: dayAndMonth)
        dateTimePickerScreen.setHour(hour: hour)
        dateTimePickerScreen.setMinute(minute: minute)
        dateTimePickerScreen.setAmPm(amPm: "AM")
        
//        dateTimePickerScreen.setDate(date: "Apr 22")
//        dateTimePickerScreen.setHour(hour: "9")
//        dateTimePickerScreen.setMinute(minute: "30")
//        dateTimePickerScreen.setAmPm(amPm: "AM")
        
        print(dateTimePickerScreen.getDate()) //Wed, Apr 22
        print(dateTimePickerScreen.getHour()) //9 o’clock
        print(dateTimePickerScreen.getMinute()) //30 minutes
        print(dateTimePickerScreen.getAmPm()) //AM
        
    }
    
}
