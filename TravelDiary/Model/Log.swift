//
//  Log.swift
//  TravelDiary
//
//  Created by Karl Pfister on 10/25/21.
//

import Foundation

/**
Creates our Log object - *MODEL*
 - Properties:
  - Title: The *Sring* identifier for the Log.
  - Address: The *String* representation for where the user was.
  - Date: The *Date* representation for when last logged. Defaults to the current date and time.
  - Body: The *String* representation of what the user enjoyed about this event.
 */

class Log {
    
    let logTitle: String
    let logAddress: String
    let logeDate: Date
    let logBody: String
    
    init(logTitle: String, logAddress: String, logDate: Date = Date(), logBody: String) {
        self.logTitle = logTitle
        self.logAddress = logAddress
        self.logeDate = logDate
        self.logBody = logBody
    }
} // End of class
