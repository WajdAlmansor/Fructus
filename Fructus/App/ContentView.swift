//
//  ContentView.swift
//  Fructus
//
//  Created by Wajd on 30/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    @State var isShowingSheet: Bool = false
    
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
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSheet = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                            .padding()
                            .padding(.top, 20)
                    }//end button
                    .sheet(isPresented: $isShowingSheet) {
                        SettingView()
                    }
                )
        }//end navigation
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
