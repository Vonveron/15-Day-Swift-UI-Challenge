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
    
    @State private var meals = [
    
    Meals(name: "Chicken"),
    Meals(name: "Rice"),
    Meals(name: "Pasta"),
    Meals(name: "Beets"),
    Meals(name: "Pumpkin"),
    Meals(name: "Brocoli"),
    
]
    
    var body: some View {
        
        CardView()
        
        GroupBox("Groupbox Test") {
            Text("This is my groupbox: Test")
            
        }.padding()
       
        VStack {
            Text("Salad Styles").bold()
            Image("Salad2").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200).clipShape(RoundedRectangle(cornerRadius: 75))
        }.frame(width: 150, height: 150)
        .padding()
        
        List(meals) { meals in
            HStack {
                Image("Tomatoe").resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50).clipShape(Circle())
                Text(meals.name)
            }
        }.listStyle(.automatic)
        
        HStack {
            Button("Random Meal") {
                print(Randommeal())
            }.padding()
        }
    }
    
    func Randommeal() -> String {
        if let meal = meals.randomElement() {
            return meal.name
        }
        return ""
    }
    
}


#Preview {
    RandomMealGenerator()
}
