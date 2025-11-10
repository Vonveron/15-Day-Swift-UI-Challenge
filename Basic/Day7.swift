//
//  Day7.swift
//  Basic
//
//  Created by V̅onveron on 05-11-2025.
//

import SwiftUI

struct Meals: Identifiable {
    let name: String
    let id = UUID()
    //let ImageResource =
}

private var meals = [
    
    Meals(name: "Chicken"),
    Meals(name: "Rice"),
    Meals(name: "Pasta"),
    Meals(name: "Beets"),
    Meals(name: "Pumpkin"),
    Meals(name: "Brocoli"),
    
]

struct CardView: View {
        var body: some View {
            VStack {
                Text("Menu").bold()
                HStack {
                    NavigationLink(destination: HabitListView()) {
                        Image("Board").resizable().aspectRatio(contentMode: .fit)
                    }
                    Image("Salad2").resizable().aspectRatio(contentMode: .fit)
                    Image("Salad").resizable().aspectRatio(contentMode: .fit)
                    Image("Kit").resizable().aspectRatio(contentMode: .fit)

                }
        }
    }
}

struct RandomMealGenerator: View {
    var body: some View {
        CardView()
        VStack {
            Text("Salad Styles").bold()
            Image("Salad2").resizable().aspectRatio(contentMode: .fit).frame(width: 250, height: 250)
        }
        .padding()
        List(meals) {
            Text($0.name)
            
        }.listStyle(.automatic)
        
        GroupBox("Groupbox Test") {
            Text("This is my groupbox: Test")
            
        }
        
    }
}

private func deletemeals() {
    for meals in meals {
        
    }
}

#Preview {
    RandomMealGenerator()
}
