import Foundation

// Function to convert CSV string to rows, ensuring no blank rows
func convertCSVToRows(csv: String) -> String {
    // Split the CSV string by commas
    let values = csv.components(separatedBy: ",")
    
    // Map the values, trim spaces, and filter out any empty entries
    let filteredValues = values.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
                               .filter { !$0.isEmpty }
    
    // Join the filtered values with newline characters to format each value in a new row
    let formattedRows = filteredValues.joined(separator: "\n")
    
    return formattedRows
}

// Example CSV string
let csvInput = "apple, banana, , cherry, , date, elderberry"

// Convert and print the result
let result = convertCSVToRows(csv: csvInput)
print(result)
