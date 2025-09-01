//
//  SettingView.swift
//  Fructus
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct SettingView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "CUSTOMIZATION", labelImage: "paintbrush")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )

                    }
            
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(RowTitle: "Developer", RowContent: "John / Jane")
                        SettingsRowView(RowTitle: "Designer", RowContent: "Robert Petras")
                        SettingsRowView(RowTitle: "Compatibillity", RowContent: "iOS 14")
                        SettingsRowView(RowTitle: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(RowTitle: "X", linkLabel:  "@Robert Petras", linkDestination: "x.com/robertpetras")
                        SettingsRowView(RowTitle: "SwiftUI", RowContent: "2.0")
                        SettingsRowView(RowTitle: "Version", RowContent: "1.1.0")
                    }//end groupbox
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
