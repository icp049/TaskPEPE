//
//  CreateTaskView.swift
//  MyTask
//
//  Created by Ian Pedeglorio on 2023-11-04.
//

import SwiftUI

struct CreateTaskView: View {
    
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var vm: EditTaskViewModel
    
    var body: some View {
        
        List{
            TextField("TaskName", text: vm.task.taskName)
                .keyboardType(.namePhonePad)
            
            TextField("TaskNote", text: vm.task.taskNote)
            
            
            
            
            DatePicker("TaskDate", selection: .constant(.now),
                       displayedComponents: [.date])
            .datePickerStyle(.compact)
        }
       
        
    }
}

struct CreateTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTaskView(vm: .init(provider: .shared))
    }
}
