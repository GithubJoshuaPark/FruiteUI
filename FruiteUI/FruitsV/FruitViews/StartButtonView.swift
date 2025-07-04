//
//  StartButtonView.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/12.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }) //: BUTTON
        .accentColor(Color.white)
    }
}


// MARK: - Preveiw
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
