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
        Button("Start Countdown") {
            
            
        }.font(.title2).background(RoundedRectangle(cornerRadius: 30)
            .fill(Color.blue)).foregroundColor(.yellow).frame(width: 200, height: 25)
    }
}

#Preview {
    Day10()
}
