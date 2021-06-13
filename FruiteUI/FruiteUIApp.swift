//
//  FruiteUIApp.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/12.
//

import SwiftUI

@main
struct FruiteUIApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                FruitListView(fruits: fruitsData)
            }
        }
    }
}
