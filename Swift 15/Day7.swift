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
    
    @State private var ResultMeal: String = ""
    @State private var RandomResult = false
    
    var body: some View {
        
        CardView().padding()
        
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
            VStack{
                Text(ResultMeal.isEmpty ? "Random Meal Prep" : ResultMeal).padding().background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.yellow)).bold()
                                
                Button("Random Meal") {
                    withAnimation(.easeInOut(duration: 0.4)) {
                        ResultMeal = Randommeal()
                    }
                }.padding().bold().foregroundColor(Color.black).buttonStyle(.bordered)
                
            }
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
