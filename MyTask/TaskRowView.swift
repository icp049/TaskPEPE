//
//  TaskRowView.swift
//  MyTask
//
//  Created by Ian Pedeglorio on 2023-11-04.
//

import SwiftUI

struct TaskRowView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            
            Text("TaskName")
                .font(.system(size: 26))
            
            Text("TasKNote")
                .font(.caption)
            
            }
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(alignment: .topTrailing){
            Button{
                
            } label: {
                Image(systemName: "star")
                    .font(.title3)
                    .symbolVariant(.fill)
                    .foregroundColor(.gray.opacity(0.3))
            }
            .buttonStyle(.plain)
        }
        
    }
}

struct TaskRowView_Previews: PreviewProvider {
    static var previews: some View {
        TaskRowView()
    }
}
