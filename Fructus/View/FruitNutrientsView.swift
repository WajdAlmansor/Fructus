//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Wajd on 01/09/2025.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional valueper 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                    .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }//end group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//end gruopbox
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
