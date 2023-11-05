//
//  Task.swift
//  MyTask
//
//  Created by Ian Pedeglorio on 2023-11-04.
//

import Foundation
import CoreData


final class Task: NSManagedObject {
    
    @NSManaged var taskName:String
    @NSManaged var taskDate:Date
    @NSManaged var taskNote:String
    
    
}
