//
//  TaskTableViewCell.swift
//  Tasks
//
//  Created by Ben Gohlke on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    // MARK: - Properties
    
    // MARK: - IBOutlets
    @IBOutlet weak var CompletedButton: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!
    
    @IBAction func toggleComplete(_ sender: Any) {
        
    }
}
