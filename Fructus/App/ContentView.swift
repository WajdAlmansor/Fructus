//
//  ContentView.swift
//  Fructus
//
//  Created by Wajd on 30/08/2025.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                }
            }//end list
            .navigationTitle("Fruits")
        }//end navigation
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
