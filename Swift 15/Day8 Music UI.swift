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
            VStack(alignment: .leading) {
                Image("808").resizable().scaledToFit().frame(width: 75, height: 75, alignment: .leading)
                Text("Song Title").bold()
                Text("Artist: Kanye West").bold()
            }
            VStack(alignment: .leading) {
                
                ProgressView(value: progress1).progressViewStyle(.linear).padding()
                
                Slider(value: $progress1, in: 0...10) {
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("11")
                } onEditingChanged: { editing in
                    print("Editing: \(editing)")
                }
                Text("Volume")//.font(.caption)
                
                
            }
        }.padding()
    }
}

#Preview {
    Day8_Music_UI()
}
