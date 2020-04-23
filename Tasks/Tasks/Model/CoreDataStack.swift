//
//  CoreDataStack.swift
//  Tasks
//
//  Created by patelpra on 4/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let shared = CoreDataStack()
    
    // This is shared instance of the Core Data Stack
    lazy var container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "Task")
        container.loadPersistentStores { (_, error) in
            if let error = error {
                fatalError("Failed to load persistent stores: \(error)")
            }
        }
        return container
        
    }()
    
    // Makes the access to the context faster
    // Reminds you to use the context on the main queue
    
    var mainContext: NSManagedObjectContext {
        return container.viewContext
    }
}
