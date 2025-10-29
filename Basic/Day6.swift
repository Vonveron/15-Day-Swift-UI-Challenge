//
//  Day6.swift
//  Basic
//
//  Created by Parrié on 22-10-2025.
//

import SwiftUI

// Added codable below to convert data to and from JSON

struct Habit: Identifiable, Codable {
    let id: UUID
    var title: String
    var isDone: Bool
    
}

struct HabitListView: View {
    @AppStorage("habitsData") private var habitsData: Data = Data()
    @State private var habits: [Habit] = []
    
//    @State private var habits = [
//        Habit(id: UUID(), title: "Code", isDone: false),
//        Habit(id: UUID(), title: "Gym", isDone: false),
//        Habit(id: UUID(), title: "Meditate", isDone: false),
//        Habit(id: UUID(), title: "Cook", isDone: false),
//        Habit(id: UUID(), title: "Read", isDone: false),
//        
//    ]
    var body: some View {
        NavigationView {
            List($habits) {$habits in
                Toggle(isOn: $habits.isDone,) {
                    Text(habits.title)
                        .font(.headline)
                        .foregroundColor(habits.isDone ? .yellow : .primary)
                    
                }.onChange(of: habits.isDone) { _ in saveHabits()
                }
            }
        }.navigationTitle("My Habits")
            .onAppear(perform: loadHabits)
    }
}

private func saveHabits() {
    do {
        let encoded = try JSONEncoder().encode(habits)
        habitsData = encoded
    }
    catch {
        print("Failed to save habits: \(error)")
    }
  }

private func loadHabits() {
    guard !habitsData.isEmpty else {
        
        Habit(id: UUID(), title: "Code", isDone: false),
        Habit(id: UUID(), title: "Gym", isDone: false),
        Habit(id: UUID(), title: "Meditate", isDone: false),
        Habit(id: UUID(), title: "Cook", isDone: false),
        Habit(id: UUID(), title: "Read", isDone: false),
        
    }
}



#Preview {
    HabitListView()
}
