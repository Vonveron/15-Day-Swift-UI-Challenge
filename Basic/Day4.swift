//
//  Day4.swift
//  Basic
//
//  Created by Parrié on 30-09-2025.
//

import SwiftUI

struct Day4: View {
        
    var body: some View {
        
        VStack{
            ScrollView(.horizontal) {
                HStack{
                    VStack {
                        Text("Montevideo, 20°C").bold().padding().background(
                            RoundedRectangle(cornerRadius: 31)
                                .fill(Color.blue)).foregroundColor(.yellow)
                            .frame(width: 200, height: 25)
                            .shadow(radius: 5).padding()
                        (Image(systemName: "sun.max").bold())
                    }
                    VStack{
                        Text("Miami, 24°C").bold().padding().background(
                            RoundedRectangle(cornerRadius: 31)
                                .fill(Color.blue)).foregroundColor(.yellow)
                            .frame(width: 200, height: 25)
                            .shadow(radius: 5).padding()
                        (Image(systemName: "sun.max").bold())
                        
                    }
                    
                    VStack{
                        Text("PEI, 24°C").bold().padding().background(
                            RoundedRectangle(cornerRadius: 31)
                                .fill(Color.blue)).foregroundColor(.yellow)
                            .frame(width: 200, height: 25)
                            .shadow(radius: 5).padding()
                        (Image(systemName: "sun.max").bold())
                        
                    }
                }
            }
        }
    }
}


#Preview {
    Day4()
}
