//
//  MyTaskApp.swift
//  MyTask
//
//  Created by Ian Pedeglorio on 2023-11-04.
//

import SwiftUI

@main
struct MyTaskApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, TasksProvider.shared.viewContext) //make changes into our view
        }
    }
}
