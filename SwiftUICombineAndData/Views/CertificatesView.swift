//
//  CertificatesView.swift
//  SwiftUICombineAndData
//
//  Created by Mackley Magalhães da Silva on 07/12/23.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateVM = CertificateViewModel()
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(certificateVM.certificates.indices, id: \.self) { index in
                CertificateCard(selection: $selection)
                    .padding(.horizontal, 8)
                    .environmentObject(certificateVM)
            }
        }
        .background(AccountBackground())
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CertificatesView()
}
