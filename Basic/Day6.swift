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
    @State private var habits: [Habit] = [
        Habit(id: UUID(), title: "Code", isDone: false),
        Habit(id: UUID(), title: "Gym", isDone: false),
        Habit(id: UUID(), title: "Meditate", isDone: false),
        Habit(id: UUID(), title: "Cook", isDone: false),
        Habit(id: UUID(), title: "Read", isDone: false),
    ]
    
    var body: some View {
        NavigationView {
            List($habits) { $habit in
                Toggle(isOn: $habit.isDone) {
                    Text(habit.title)
                        .font(.headline)
                        .foregroundColor(habit.isDone ? .yellow : .primary)
                }
                .onChange(of: habit.isDone) { _ in
                    saveHabits()
                }
            }
            .navigationTitle("My Habits")
        }
        .onAppear(perform: loadHabits)
    }
    
    // Private funcs were outside the HabitlistView Struct
    
    private func saveHabits() {
        do {
            let encoded = try JSONEncoder().encode(habits)
            habitsData = encoded
        } catch {
            print("Failed to save habits: \(error)")
        }
    }

    private func loadHabits() {
        guard !habitsData.isEmpty else {
            // Set default habits if no saved data
            habits = [
                Habit(id: UUID(), title: "Code", isDone: false),
                Habit(id: UUID(), title: "Gym", isDone: false),
                Habit(id: UUID(), title: "Meditate", isDone: false),
                Habit(id: UUID(), title: "Cook", isDone: false),
                Habit(id: UUID(), title: "Read", isDone: false),
            ]
            return
        }
        do {
            habits = try JSONDecoder().decode([Habit].self, from: habitsData)
        } catch {
            print("Failed to load habits: \(error)")
        }
    }
}

#Preview {
    HabitListView()
}
