

import SwiftUI

struct OnBoardingView: View {
    //MARK: - PROPRTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]){item in
                FruitCardView(fruit: item)
            }//end foreach
        }// end tap
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

//MARK: - PREVIEW
#Preview {
    OnBoardingView(fruits: fruitsData)
}
