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

struct RandomMealGenerator: View {
    var body: some View {
                    
        Text("Meal Generator").bold()
        Image("Salad2").resizable().aspectRatio(contentMode: .fit)

        List(meals) { 
            Text($0.name)
            
        }.listStyle(.automatic)
        
    }
    struct CardView: View {
        var body: some View {
            Image("Board").resizable().aspectRatio(contentMode: .fit)
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
