//
//  ContentView.swift
//  MyTask
//
//  Created by Ian Pedeglorio on 2023-11-04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingNewTask = false
    
    var body: some View {
        NavigationStack {
            List{
                
                ForEach((0...10), id: \.self){ item in
                    
                    ZStack(alignment: .leading){
                        NavigationLink(destination: TaskDetailView()){
                            EmptyView()
                        }
                        .opacity(0)
                        
                        TaskRowView()
                        
                    }
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction){
                    Button {
                        isShowingNewTask.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .font(.title)
                    }
                }
            }
            .sheet(isPresented: $isShowingNewTask){
                NavigationStack{
                    CreateTaskView()
                }
            }
            .navigationTitle("My Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
