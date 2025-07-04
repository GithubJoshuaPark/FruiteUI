//
//  FruitModel.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/12.
//

import SwiftUI

// MARK: - Fruits data model
struct Fruit: Identifiable {
    var id = UUID()
    var title         : String
    var headline      : String
    var image         : String
    var gradientColors: [Color]
    var description   : String
    var nutrition     : [String]
}
