//
//  CSVToRows.swift
//  UIKitCatalog
//
//  Created by pavan Kovurru on 10/18/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

// Function to convert CSV string to rows
func convertCSVToRows(csv: String) -> String {
    // Split the CSV string by commas
    let values = csv.components(separatedBy: ",")
    
    // Join the values with newline characters to format each value in a new row
    let formattedRows = values.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }.joined(separator: "\n")
    
    return formattedRows
}

// Example CSV string
let csvInput = "apple, banana, cherry, date, elderberry"

// Convert and print the result
let result = convertCSVToRows(csv: csvInput)
print(result)
