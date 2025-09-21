//
//  Test.swift
//  Basic
//
//  Created by Parrié on 11-09-2025.
//

import SwiftUI

struct TodoListview: View {
    @State private var tasks: [String] = [ ]
    
    @State private var newTask: String = ""

    var body: some View {
        
        VStack {
            
            HStack{
                TextField("Enter a new Task Text", text: $newTask).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                Button(action: , "New Task"): {
                    
                    if !newTask.isEmpty {
                        tasks.append(newTask)
                        newTask = ""
                    }
                })
                { Text("Add Task")
                    
                }.padding(.horizontal)
                 .padding(vertical, 8)
                
            }
        }
    }
}
#Preview {
    TodoListview()
}
