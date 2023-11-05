//
//  ContentView.swift
//  MyTask
//
//  Created by Ian Pedeglorio on 2023-11-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List{
                
                
                ForEach((0...10), id: \.self){ item in
                   
                    TaskRowView()
                    
                }
                
            }
        }
        .navigationTitle("My Tasks")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
