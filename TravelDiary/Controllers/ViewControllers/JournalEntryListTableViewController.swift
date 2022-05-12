//
//  JournalEntryListTableViewController.swift
//  TravelDiary
//
//  Created by Andrew H on 5/12/22.
//

import UIKit

class JournalEntryListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return JournalEntryController.sharedInstance.journalEntries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "journalEntryCell", for: indexPath) as? JournalEntryTableViewCell else {return UITableViewCell()}

        let entry = JournalEntryController.sharedInstance.journalEntries[indexPath.row]
        cell.updateViews(for: entry)

        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let entryToDelete = JournalEntryController.sharedInstance.journalEntries[indexPath.row]
            JournalEntryController.sharedInstance.delete(journalEntryToDelete: entryToDelete)
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //MARK: - IIDOO
        
        // identifer
        if segue.identifier == "toDetailVC" {
            // index
            if let index = tableView.indexPathForSelectedRow {
                // Destination
                if let destination = segue.destination as? JournalEntryDetailViewController {
                    // Object to send
                    let entry = JournalEntryController.sharedInstance.journalEntries[index.row]
                    // object to recieve
                    destination.journalEntryReciever = entry
                }
            }
        }
            

    }


}
