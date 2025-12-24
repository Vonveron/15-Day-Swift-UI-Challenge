//
//  Day10.swift
//  Swift15
//
//  Created by V̅onveron on 23-12-2025.
//

import SwiftUI

struct Day10: View {
    
    @State private var seconds: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            TextField("Enter Seconds", text: $seconds)
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
            
            if let secondsValue = Int(seconds) {
                Text("You entered: \(secondsValue) seconds")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
        }.padding()
    }
}

#Preview {
    Day10()
}
