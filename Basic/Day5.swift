//
//  Day5.swift
//  Basic
//
//  Created by Parrié on 03-10-2025.
//

import SwiftUI

struct Day5: View {
    
    @State private var secondsElapsed = 0
    
    let Counter = Timer.publish(every: 1, on: RunLoop.main, in: .common).autoconnect()
    //for each : Counter.Output in(Counter; print("Seconds now" .Timer))

    var body: some View {
        VStack {
            Text("⏱️ Seconds Elapsed").bold()
            
            Text("\(secondsElapsed)")
                            .font(.largeTitle)
                            .bold()
                            .padding()
            
        }.onReceive(Counter) { _ in
            secondsElapsed += 1
            
        }
    }
}

#Preview {
    Day5()
}
