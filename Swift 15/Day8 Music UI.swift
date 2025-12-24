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

struct Day8: View {
    
    @State private var progress1: Double = 0.5
    
    var body: some View {
        
        
        GroupBox() {
            
            VStack(alignment: .center) {
                Label("Now Playing", systemImage: "music.note")
                
                Image("808").resizable().scaledToFit().frame(width: 150, height: 150, alignment: .leading)
                Text("Song Title: Winter").bold()
                Text("Artist: Kanye West").font(.footnote)
                
                ProgressView(value: progress1).progressViewStyle(.linear).padding()
                
                Slider(value: $progress1, in: 0...11) {
                } minimumValueLabel: {
                    Text("0")
                } maximumValueLabel: {
                    Text("11")
                } onEditingChanged: { editing in
                    print("Editing: \(editing)")
                }
                Text("Volume").font(.footnote)
            }
            
            HStack{
                
                Image(systemName: "backward.fill")
                Image(systemName: "playpause.fill")
                Image(systemName: "forward.fill")
                
            }.bold()
        }.padding().background(LinearGradient( colors: [.yellow, .green], startPoint: .topLeading, endPoint: .bottomTrailing ))
        
        //        MusicUI().padding()
    }
}

#Preview {
    Day8()
}

//struct MusicUI: View {
//    
//    @State private var progress1: Double = 0.5
//
//    
//    var body: some View{
//        
//        
//        GroupBox() {
//            VStack {
//                Image("808").resizable().scaledToFit().frame(width: 150, height: 150, alignment: .leading)
//                //            RoundedRectangle(cornerRadius: 7)
//                //                .frame(width: 150, height: 150)
//                //                .foregroundColor(.yellow)
//                
//                VStack(alignment: .leading) {
//                    Text("Song Title:").font(.headline.bold())
//                    Text("Artist: Kanye West").font(.footnote)
//                    
//                    ProgressView(value: progress1).progressViewStyle(.linear).padding()
//                }
//                
//                HStack{
//                    
//                    Image(systemName: "backward.fill")
//                    Image(systemName: "pause.fill")
//                    Image(systemName: "forward.fill")
//                    
//                }.bold()
//            }
//        }.padding().background(LinearGradient( colors: [.yellow, .green], startPoint: .topLeading, endPoint: .bottomTrailing ))
//    }
//    
//}


