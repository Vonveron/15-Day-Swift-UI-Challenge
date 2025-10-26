//
//  Day6.swift
//  Basic
//
//  Created by Parrié on 22-10-2025.
//

import SwiftUI

struct Habit: View {
    
    var title: String = ("")
    var isDone: Bool = false
    
    var body: some View {
        
        List {
            Text("Habit I")
            Text("Habit II")
            Text("Habit III")
            Text("Habit IV")
            Text("Habit V")
            
        }
        

        
        
    }
}



#Preview {
    Habit()
}
