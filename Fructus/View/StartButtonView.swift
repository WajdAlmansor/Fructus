//
//  StartButtonView.swift
//  Fructus
//
//  Created by Wajd on 30/08/2025.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPRTIES
    
    //MARK: - BODY
    var body: some View {
        Button(action:  {
            print("Exit the onboarding")
        }){
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//End Hstack
            .padding(.horizontal,  16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

//MARK: - PREVIEW
#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
}
