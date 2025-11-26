//
//  Day8 Music UI.swift
//  Swift15
//
//  Created by V̅onveron on 26-11-2025.
//

import SwiftUI

struct Day8_Music_UI: View {
    var body: some View {
        
        
        GroupBox("Groupbox Title Test") {
            
            Image("808").resizable().scaledToFit().frame(width: 150, height: 150, alignment: .leading)
            Text("Song Title")

        }.padding()
    }
}

#Preview {
    Day8_Music_UI()
}
