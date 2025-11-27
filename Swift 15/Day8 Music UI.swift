//
//  Day8 Music UI.swift
//  Swift15
//
//  Created by V̅onveron on 26-11-2025.
//

import SwiftUI

//struct MusicDetails: Identifiable {
//    
//    let Artist: String
//    let SongTitle: String
//    
//}

struct Day8_Music_UI: View {
    
    @State private var progress1: Double = 0.5
    
    var body: some View {
        
        
        GroupBox("Groupbox Title Test") {
            
            Image("808").resizable().scaledToFit().frame(width: 75, height: 75, alignment: .leading)
            Text("Song Title").bold()
            Text("Artist: Kanye West").bold()
            
            ProgressView(value: progress1).progressViewStyle(.linear)


        }.padding()
    }
}

#Preview {
    Day8_Music_UI()
}
