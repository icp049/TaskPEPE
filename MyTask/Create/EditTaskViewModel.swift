//
//  EditTaskViewModel.swift
//  MyTask
//
//  Created by Ian Pedeglorio on 2023-11-05.
//

import Foundation
import CoreData

final class EditTaskViewModel: ObservableObject{
    
    @Published var task: Task
    
    private let context: NSManagedObjectContext
    
    init(provider: TasksProvider, task: Task? = nil){
        self.context = provider.newContext
        self.task = Task(context: self.context)
        
    }
    
    func save() throws {
        if context.hasChanges{
            try context.save()
        }
    }
    
}
