//
//  OnboardingView.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/12.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        TabView {
            // Injectting just six elements into FruitCardView
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
