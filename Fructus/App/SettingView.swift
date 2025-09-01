//
//  SettingView.swift
//  Fructus
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    
                    GroupBox(label:
                      SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)

                        }//end hstack
                    }//end groupbox
                    
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                }//end vsatck
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//end scroll
        }//end navi view
    }
}

#Preview {
    SettingView()
}
