//
//  FAQRow.swift
//  SwiftUICombineAndData
//
//  Created by Mackley Magalhães da Silva on 21/11/23.
//

import SwiftUI

struct FAQRow: View {
    var faq: FAQ
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(faq.question)
                .font(.title3)
                .fontWeight(.bold)
            Text(faq.answer)
                .font(.subheadline)
                .opacity(0.7)
            
            Divider()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    FAQRow(faq: faqData[0])
}
