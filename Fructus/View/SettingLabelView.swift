//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Wajd on 02/09/2025.
//

import SwiftUI

struct SettingLabelView: View {
    
    var labelText: String
    
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage )
        }
    }
}

#Preview {
    SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
        .padding()
}
