//
//  Day6.swift
//  Basic
//
//  Created by Parrié on 22-10-2025.
//

import SwiftUI

struct Habit: Identifiable {
    let id = UUID()
    var title: String
    var isDone: Bool
    
}
    

struct HabitListView: View {
    
    @State private var habits = [
        Habit(title: "Code", isDone: false),
        Habit(title: "Gym", isDone: false),
        Habit(title: "Meditate", isDone: false),
        Habit(title: "Cook", isDone: false),
        Habit(title: "Read", isDone: false),
        
    ]
    var body: some View {
        NavigationView {
            List($habits) {$habits in
                Toggle(isOn: $habits.isDone,) {
                    Text(habits.title)
                        .font(.headline)
                        .foregroundColor(habits.isDone ? .yellow : .primary)
                    
                }
            }
        }.navigationTitle("My Habits")
    }
}


#Preview {
    HabitListView()
}
