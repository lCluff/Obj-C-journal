//
//  LECEntryDetailViewController.swift
//  JournalOBJC27
//
//  Created by Leah Cluff on 7/1/19.
//  Copyright © 2019 Leah Cluff. All rights reserved.
//

import UIKit

class LECEntryDetailViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var entryTextView: UITextView!
    
    var entry: LECEntry? {
        didSet {
            if isViewLoaded{}
        }
    }
    
    override func viewDidLoad() {
        guard let importTitle = entry?.title, let importBody = entry?.bodytext else {return}
        titleTextField.text = importTitle
        entryTextView.text = importBody
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    private func updateViews() {
        guard let entry = entry else{return}
        entryTextView.text = entry.bodytext
        titleTextField.text = entry.title
    }
    
    func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
        textfield.resignFirstResponder()
        return true
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextField.text, let bodyText = entryTextView.text else {return}
        if let entry = self.entry {
            LECEntryController.sharedInstance().updateEntry(entryToUpdate: entry, newTitle: title, newBody: bodyText)
        } else {
            LECEntryController.sharedInstance().addEntryObject(bodyText: bodyText, title: title)
        }
        
        let _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        titleTextField.text = ""
        entryTextView.text = ""
        if let entry = self.entry {
            LECEntryController.sharedInstance().removeEntry(entry: entry)
        }
    }
}
