//
//  JournalEntryDetailViewController.swift
//  TravelDiary
//
//  Created by Andrew H on 5/12/22.
//

import UIKit

class JournalEntryDetailViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var journalEntryDateLabel: UILabel!
    @IBOutlet weak var journalEntryTitleTextField: UITextField!
    @IBOutlet weak var journalEntryAddressTextField: UITextField!
    @IBOutlet weak var journalEntrySummaryTextView: UITextView!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
    }
    //MARK: Properties
    var journalEntryReciever: JournalEntry?
    
    //MARK: Helper functions
    func updateViews() {
        guard let journalEntry = journalEntryReciever else {return}
        journalEntryTitleTextField.text = journalEntry.title
        journalEntryAddressTextField.text = journalEntry.address
        journalEntryDateLabel.text = journalEntry.timestamp.stringValue()
        journalEntrySummaryTextView.text = journalEntry.summary 
    }
    //MARK: Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
       guard let title = journalEntryTitleTextField.text,
        let address = journalEntryAddressTextField.text,
             let summary = journalEntrySummaryTextView.text else {return}
        
        
        
        if let journalEntry = journalEntryReciever {
        
            // if the reciever has a value they are trying to update it
            JournalEntryController.sharedInstance.update(entryToUpdate: journalEntry, title: title, address: address, summary: summary)
        } else {
            // else - they are creating a new one
            JournalEntryController.sharedInstance.createJournalEntry(withTitle: title, address: address, summary: summary)
            
            
        }
        navigationController?.popViewController(animated: true)
        
        
    }
    

} // end of class
