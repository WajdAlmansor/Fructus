//
//  ApplicationSettingView.swift
//  Fructus
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct SettingsRowView: View {
    
    var RowTitle: String
    var RowContent: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            HStack {
                Text(RowTitle)
                    .foregroundColor(.gray)
                Spacer()
                if (RowContent != nil) {
                    Text(RowContent!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    SettingsRowView(RowTitle: "Developer", RowContent: "John / Jane")
        .padding()
}
