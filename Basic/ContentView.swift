//
//  ContentView.swift
//  Basic
//
//  Created by Parrié on 03-09-2025.
//

import SwiftUI

struct ContentView: View {
    let Options: [Color] = [.red, .blue, .indigo, .green,]

    let fruits = ["Apple", "Banana", "Cherry", "Grape", "Orange"]

    
    var body: some View {
        VStack(spacing: 20) {
            Text("Buisness Logo, Business Text")
                .padding().font(.title.bold())
            Text(Date().formatted(date: .abbreviated, time: .complete))
            Text("Business Slogan / Campaign")
            Text("Busines Logo, Business Text")
            
            
//            var body: some View {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {

                    List(Options, id: \.self) { option in
                        ForEach(Options, id: \.self) { option in
                                           Circle()
                                               .fill(option)
                                               .frame(width: 80, height: 80)
                   // Foreach(Options, id :\self) { option in Options(string)
                    }
                }
                    .padding()
//            }
//                var body: some View {
                    List(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .frame(height: 200)
                }
            }
        }
    }

    #Preview {
        ContentView()
    }


//    let options = ["Red", "Gold", "Green", "Grey", "Blue", "Purple"]
//
//var body: some View {
//    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
//        ForEach(options, id: \.self) { option in
//            Text(option)
//                .padding()
//                .background(Color.gray.opacity(0.2))
//                .cornerRadius(8)
//        }
//    }
//    .padding()
//}
//}
