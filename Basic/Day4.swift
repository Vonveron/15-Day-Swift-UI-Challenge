//
//  Day4.swift
//  Basic
//
//  Created by Parrié on 30-09-2025.
//

import SwiftUI

struct Day4: View {
        
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).padding().background(
                RoundedRectangle(cornerRadius: 100)
                    .fill(Color.green)).foregroundColor(.yellow)
                .frame(width: 175, height: 200)
                .shadow(radius: 5).padding()
            
        Text("Weather Test, 24°C")
        (Image(systemName: "sun.max"))

    }
}


#Preview {
    Day4()
}
