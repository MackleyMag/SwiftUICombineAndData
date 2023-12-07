//
//  LiteModeRow.swift
//  SwiftUICombineAndData
//
//  Created by Mackley Magalhães da Silva on 07/12/23.
//

import SwiftUI

struct LiteModeRow: View {
    @State private var isLiteMode: Bool = false
    
    var body: some View {
        Toggle(isOn: $isLiteMode, label: {
            HStack(spacing: 12) {
                GradientIcon(icon: "speedometer")
                VStack(alignment: .leading) {
                    Text("LiteMode")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text("Better performace. Recommended for iPhone X and older")
                        .font(.caption2)
                        .opacity(0.2)
                }
            }
        })
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.3450980392, green: 0.337254902, blue: 0.8392156863, alpha: 1))))
    }
}

#Preview {
    LiteModeRow()
}
