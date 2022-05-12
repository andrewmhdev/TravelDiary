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
        
    }
    //MARK: Properties
    
    
    //MARK: Helper functions
    
    
    
    //MARK: Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    

} // end of class
