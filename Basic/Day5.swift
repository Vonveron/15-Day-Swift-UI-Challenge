//
//  Day5.swift
//  Basic
//
//  Created by Parrié on 03-10-2025.
//

import SwiftUI
import Combine

struct Day5: View {
    
    @State private var secondsElapsed = 0
    @State private var isRunning = false
    @State private var timerConnection: Cancellable?

    let Counter = Timer.publish(every: 1, on: RunLoop.main, in: .common)

    var body: some View {
        VStack {
            Text("⏱️ Seconds Elapsed").bold()
            
            Text("\(secondsElapsed)").font(.largeTitle).bold().padding()
            
            
            HStack {
                Button(isRunning ? "Pause" : "Start") {
                    if isRunning {
                        timerConnection?.cancel()
                    } else {
                        timerConnection = Counter.connect()
                    }
                    isRunning.toggle()
                }
                .buttonStyle(.borderedProminent)
            }
            
            
        }.onReceive(Counter) { _ in
            secondsElapsed += 1
            
        }
    }
}

#Preview {
    Day5()
}
