//
//  Original View.swift
//  Basic
//
//  Created by Parrié on 08-09-2025.
// This Original view was moved to Content View on Sept 15th 2025

import SwiftUI

struct OriginalView: View {
    
        let Options: [Color] = [.red, .blue, .indigo, .green,]
        
        let fruits = ["Apple", "Banana", "Cherry", "Grape", "Orange"]
        
        let country = ["Jam", "Usa", "Col", "Bzl","Uyu"]
        
        var body: some View {
            
            
            //   var body: some View {
            VStack(spacing: 20) {
                
                Text("Buisness Logo, Business Text")
                    .padding().font(.title.bold())
                Text(Date().formatted(date: .abbreviated, time: .complete))
                
                Image("Kit").resizable().scaledToFill().ignoresSafeArea()
                Text("Business Slogan / Campaign")
                Text("Busines Logo, Business Text")
                
                
                // Cannont have one body view inside of another!!
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]) {
                    
                    List(Options, id: \.self) { option in
                        ForEach(Options, id: \.self) { option in
                            Rectangle()
                                .fill(option)
                                .frame(width: 90, height: 80)
                                .padding()
                            // Cannont have one body view inside of another!!
                            
                            List(fruits, id: \.self) { fruit in
                                Text(fruit)
                            }
                            .frame(height: 200)
                            
                            List(country, id: \.self) { fruit in
                                Text(fruit)
                            }
                            .frame(height: 200)
                        }
                    }
                }
                
            }
        }
    }

#Preview {
            OriginalView()
}
                

