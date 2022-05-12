//
//  JournalEntryController.swift
//  TravelDiary
//
//  Created by Andrew H on 5/12/22.
//

import Foundation

class JournalEntryController {
    
    //MARK: Source of truth
    // Singleton
    static let sharedInstance = JournalEntryController()
    // Collection
    var journalEntries: [JournalEntry] = []
    /// journal entries is an array of Journal Entry data type
    
    
    //MARK: - CRUD
    
    func createJournalEntry(withTitle title: String, address: String, summary: String) {
        let journalEntry = JournalEntry(title: title, address: address, summary: summary)
        journalEntries.append(journalEntry)

    }
    func update(entryToUpdate: JournalEntry, title: String, address: String, summary: String) {
        entryToUpdate.title = title
        entryToUpdate.address = address
        entryToUpdate.summary = summary
    }
    func delete(journalEntryToDelete: JournalEntry) {
        guard let index = journalEntries.firstIndex(of: journalEntryToDelete) else {return}
        journalEntries.remove(at: index)
    }
}
