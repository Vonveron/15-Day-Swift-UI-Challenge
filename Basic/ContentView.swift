//
//  ContentView.swift
//  Basic
//
//  Created by Parrié on 03-09-2025.
//

import SwiftUI
import UIKit   // we use UIColor helpers for RGB/HEX

// Simple data model for each color tile
struct ColorOption: Identifiable {
    let id = UUID()
    let name: String
    let color: Color      // SwiftUI color for UI
    let uiColor: UIColor  // UIKit color so we can extract RGB/HEX reliably
}

struct ContentView: View {
    
    var body: some View {
            TabView {
                FirstPage()
                    .tabItem {
                        Label("Page 1", systemImage: "1.circle")
                    }
                            
                SecondPage()
                    .tabItem {
                        Label("Page 2", systemImage: "2.circle")
                    }
            }
            // Make it swipeable instead of tab bar
            .tabViewStyle(PageTabViewStyle())
        }
    }

let Options: [Color] = [.red, .blue, .indigo, .green,]

let fruits = ["Apple", "Banana", "Cherry", "Grape", "Orange"]

let country = ["Jam", "Usa", "Col", "Bzl","UYU"]

struct FirstPage: View {
    
    var body: some View {
        
        
        //   var body: some View {
        VStack(spacing: 20) {
            Text("Buisness Logo, Business Text")
                .padding().font(.title.bold())
            Text(Date().formatted(date: .abbreviated, time: .complete))
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


struct SecondPage: View {

    // Replace your original `Options: [Color]` with richer model
    let colorOptions: [ColorOption] = [
        ColorOption(name: "Media 1",    color: .red,    uiColor: .systemRed),
        ColorOption(name: "Media 2",   color: .blue,   uiColor: .systemBlue),
        ColorOption(name: "Media 3", color: .indigo, uiColor: .systemIndigo),
        ColorOption(name: "Media 4",  color: .green,  uiColor: .systemGreen)
    ]

    let fruits = ["Apple", "Banana", "Cherry", "Grape", "Orange"]
    let columns = [ GridItem(.flexible()), GridItem(.flexible()) ]

    var body: some View {
        NavigationStack {                         // iOS 16+: replace with NavigationView if needed
            ScrollView {
                VStack(spacing: 20) {
                    // Header
                    VStack(alignment: .leading, spacing: 6) {
                        Text(" Business Logo").font(.title.bold())

                        Text("Business Title, Business Text")
                            .font(.title.bold())
                        Text(Date().formatted(date: .abbreviated, time: .complete))
                            .font(.subheadline)
                        Text("Business Slogan / Campaign")
                            .font(.headline)
                        Divider()
                    }
                    .padding(.horizontal)
                    
                    NavigationStack {
                        VStack {
                            // Make this first "Task Manager" clickable
                            NavigationLink(destination: TodoListview()) {
                                Text("Task Manager")
                                    .font(.headline)
                                    .foregroundColor(.red)
                            }

                            // ... other content ...
                        }
                        .navigationTitle("") // keep system nav title empty
                    }
                    
                    // Grid of color tiles (2 columns)
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(colorOptions) { option in
                            // NavigationLink wraps each tile so tapping goes to the detail view
                            NavigationLink(destination: ColorDetailView(option: option)) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(option.color)
                                        .frame(height: 100)
                                    Text(option.name)
                                        .font(.headline)
                                    // Choose readable text color based on luminance
                                        .foregroundColor(option.uiColor.isLight ? .black : .white)
                                        .shadow(radius: 1)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    // Simple list of fruits (not a List inside the grid)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Fruits")
                            .font(.headline)
                            .padding(.horizontal)
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 8).fill(.thinMaterial))
                                .padding(.horizontal)
                        }
                    }
                    
                    Spacer(minLength: 20)
                }
                .padding(.vertical)
            }
        }
            }
            }

struct ColorDetailView: View {
    let option: ColorOption

    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 12)
                .fill(option.color)
                .frame(height: 220)
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(.black.opacity(0.06)))

            Text(option.name)
                .font(.title2)
                .bold()

            VStack(alignment: .leading, spacing: 6) {
                Text("HEX: \(option.uiColor.hexString)")
                Text("RGB: \(option.uiColor.rgbString)")
            }
            .font(.subheadline)

            Spacer()
        }
        .padding()
        .navigationTitle(option.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - UIColor helpers for RGB / HEX and luminance
extension UIColor {
    // returns r,g,b [0..255] and alpha
    func rgbComponents() -> (r: Int, g: Int, b: Int, a: CGFloat)? {
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        guard getRed(&r, green: &g, blue: &b, alpha: &a) else { return nil }
        return (Int(round(r * 255)), Int(round(g * 255)), Int(round(b * 255)), a)
    }

    var hexString: String {
        guard let c = rgbComponents() else { return "#000000" }
        return String(format: "#%02X%02X%02X", c.r, c.g, c.b)
    }

    var rgbString: String {
        guard let c = rgbComponents() else { return "0, 0, 0" }
        return "\(c.r), \(c.g), \(c.b)"
    }

    // quick check for light/dark to set text color over a tile
    var isLight: Bool {
        guard let c = rgbComponents() else { return true }
        // perceptual luminance formula
        let r = CGFloat(c.r), g = CGFloat(c.g), b = CGFloat(c.b)
        let luminance = (0.299 * r + 0.587 * g + 0.114 * b) / 255.0
        return luminance > 0.6
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

