//
//  FruitHeaderView.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/13.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - Properties
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                        radius: 8,
                        x: 6,
                        y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZStack
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}


// MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
