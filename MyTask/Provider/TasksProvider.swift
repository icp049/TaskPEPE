//
//  TasksProvider.swift
//  MyTask
//
//  Created by Ian Pedeglorio on 2023-11-04.
//

import Foundation
import CoreData

// help us load data and interact core models



final class TasksProvider {
    
    
  static let shared = TasksProvider()
    
    private let persistentContainer: NSPersistentContainer
    
    private init() {
        
        persistentContainer = NSPersistentContainer(name: "TasksDataModel")
        persistentContainer.viewContext.automaticallyMergesChangesFromParent = true// whenever a change happens it will automatically get saved in data model file
        persistentContainer.loadPersistentStores { _, error in
            if let error {
                fatalError("Unable to load store with error: \(error)")
            }
        }
        
    }
    
    
}
