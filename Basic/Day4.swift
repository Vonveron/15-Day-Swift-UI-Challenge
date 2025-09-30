//
//  Day4.swift
//  Basic
//
//  Created by Parrié on 30-09-2025.
//

import SwiftUI

struct Day4: View {
        
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
    }
    
}

struct RoundRec: View {
    var body: some View{
        
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 55, height: 55,)
            .fill(Color.blue)
            .shadow(radius: 4)
        
    }
    
}

#Preview {
    Day4()
}
