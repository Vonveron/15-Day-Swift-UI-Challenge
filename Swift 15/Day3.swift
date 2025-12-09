//
//  Test.swift
//  Basic
//
//  Created by Parrié on 11-09-2025.
//

import SwiftUI

struct Day3: View {
    // 1. State to store the current text input
    @State private var tasks: [String] = UserDefaults.standard.stringArray(forKey: "tasks") ?? []
    // 2. State to store the list of tasks
    @State private var newTask: String = ""

    var body: some View {
        
        VStack {
            HStack{
                
                TextField("Enter a new Task", text: $newTask).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
                Button(action: {
                    
                    if !newTask.isEmpty {
                        tasks.append(newTask)
                        newTask = ""
                    }
                })
                { Text("Add Task")
                    
                }.padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            List{
                
                ForEach (tasks, id: \.self) { task in
                    Text(task)
                }
                .onDelete(perform: deleteTask)
            }
            Spacer()
        }.padding()
        
    }
    private func saveTasks() {
        UserDefaults.standard.set(tasks, forKey: "tasks")
    
    }
    private func deleteTask(offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}
#Preview {
    Day3()
}
