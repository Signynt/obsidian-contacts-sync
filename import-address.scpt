-- Define the path to your CSV file
set csvFilePath to "/path/to/your/file.csv"

-- Read the CSV file into a list
set csvData to readCSVFile(csvFilePath)

-- Loop through each entry in the CSV data
repeat with personInfo in csvData
    set firstName to item 1 of personInfo
    set lastName to item 2 of personInfo
    set personAddress to item 3 of personInfo
    set personPostalCode to item 4 of personInfo
    set personCity to item 5 of personInfo
    set personCountry to item 6 of personInfo
    
    -- Search for the contact in Contacts
    tell application "Contacts"
        set matchingContacts to (every person whose first name is firstName and last name is lastName)
        
        -- If a matching contact is found, update their address
        repeat with contact in matchingContacts
            set the street of address 1 of contact to personAddress
            set the zip of address 1 of contact to personPostalCode
            set the city of address 1 of contact to personCity
            set the country of address 1 of contact to personCountry
            save
        end repeat
    end tell
end repeat

-- Function to read CSV file and return list of records
on readCSVFile(filePath)
    set fileContents to read file filePath as «class utf8»
    set AppleScript's text item delimiters to linefeed
    set csvLines to text items of fileContents
    
    set csvData to {}
    repeat with i from 2 to count of csvLines -- Start from 2 to skip header line
        set currentLine to item i of csvLines
        set AppleScript's text item delimiters to ","
        set currentRecord to text items of currentLine
        copy currentRecord to end of csvData
    end repeat
    
    return csvData
end readCSVFile