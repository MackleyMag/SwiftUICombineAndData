//
//  ContentView.swift
//  SwiftUICombineAndData
//
//  Created by Mackley Magalhães da Silva on 16/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var contentOffset = CGFloat(0)
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                TrackableScrollView(offsetChanged: { offset in
                    contentOffset = offset.y
                }) {
                    Text("Hello, world! ")
                        .padding()
                }
                
                VisualEffectBlur(blurStyle: .systemMaterial)
                    .opacity(contentOffset < -16 ? 1 : 0)
                    .animation(.easeIn)
                    .ignoresSafeArea()
                    .frame(height: 0)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(AccountBackground())
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
