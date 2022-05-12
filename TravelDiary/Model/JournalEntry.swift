//
//  JournalEntry.swift
//  TravelDiary
//
//  Created by Andrew H on 5/12/22.
//

import Foundation

class JournalEntry {
    // stored properties
    
    /// the title the user will assign for this entry
    var title: String
    /// the address the user will assign for this entry
    var address: String
    /// the date that will be auto assigned when a user creates a journal entry
    var timestamp: Date
    /// the summary the user will assign for this entry
    var summary: String
    
    /// initializes a JournalEntry object with the values provided by the user, eventually
    init(title: String, address: String, timestamp: Date = Date(), summary: String) {
        /// self refernces the specific instances of the JournalEntry
        self.title = title
        self.address = address
        self.timestamp = timestamp
        self.summary = summary
    }
    
    
    
} // end of class
