//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Wajd on 01/09/2025.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center , spacing: 20) {
                    //MARK: - HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading , spacing: 20) {
                        //MARK: - TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //MARK: - HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //MARK: - NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //MARK: - SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //MARK: - DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //MARK: - LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//End vstack2
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//end vstack1
            }//end scroll
            .edgesIgnoringSafeArea(.top)
        }//end navigation
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
