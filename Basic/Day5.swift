//
//  Day5.swift
//  Basic
//
//  Created by Parrié on 03-10-2025.
//

import SwiftUI

struct Day5: View {
    
    let timer = Timer.publish(every: 1, on: RunLoop.main, in: .default).autoconnect()
    //(timer in Timer; print("Seconds now" .timer))

    var body: some View {
        Text("0.0s")
        
    }
}

#Preview {
    Day5()
}
