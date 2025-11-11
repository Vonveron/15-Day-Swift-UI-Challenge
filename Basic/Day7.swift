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
                        Image("Board").resizable().aspectRatio(contentMode: .fit).clipShape(Circle())
                    }
                    
                    // clipShapes, Ellipse, Capsule
                    Image("Salad2").resizable().aspectRatio(contentMode: .fit).clipShape(Circle())
                    Image("Salad").resizable().aspectRatio(contentMode: .fit).clipShape(Circle())
                    Image("Kit").resizable().aspectRatio(contentMode: .fit).clipShape(Circle())

            }
        }
    }
}

struct RandomMealGenerator: View {
    var body: some View {
        CardView()
        VStack {
            Text("Salad Styles").bold()
            Image("Salad2").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200).clipShape(RoundedRectangle(cornerRadius: 75))
        }
        .padding()
        List(meals) { meals in
            HStack {
                Image("kit").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40).clipShape(Circle())
                Text(meals.name)
            }
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
