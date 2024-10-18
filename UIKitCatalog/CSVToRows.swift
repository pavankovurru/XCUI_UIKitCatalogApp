//
//  CSVToRows.swift
//  UIKitCatalog
//
//  Created by pavan Kovurru on 10/18/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

func convertCSVToRows(csvString: String) -> [[String]] {
    var rows: [[String]] = []
    var currentRow: [String] = []
    var currentField = ""
    var inQuotes = false

    for character in csvString {
        switch character {
        case ",":
            if inQuotes {
                currentField.append(character)
            } else {
                currentRow.append(currentField)
                currentField = ""
            }
        case "\n":
            currentRow.append(currentField)
            rows.append(currentRow)
            currentRow = []
            currentField = ""
        case "\"":
            inQuotes.toggle()
        default:
            currentField.append(character)
        }
    }

    // Add the last row if it's not empty
    if !currentField.isEmpty || !currentRow.isEmpty {
        currentRow.append(currentField)
        rows.append(currentRow)
    }

    return rows
}

// Example usage with commas within quotes:
let csvData = "Name,Age,City\n\"John Doe, Jr.\",30,\"New York, NY\"\nJane,25,Los Angeles\nPeter,40,Chicago"
let rows = convertCSVToRows(csvString: csvData)

//for row in rows {
//    print(row)
//}
