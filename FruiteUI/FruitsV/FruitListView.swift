//
//  ContentView.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/12.
//

import SwiftUI

struct FruitListView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitListDetailView(fruit: item),
                        label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        })
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings.toggle()
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })) //: Button
            .sheet(isPresented: $isShowingSettings,
                   onDismiss: didDidMiss,
                   content: {
                    SettingView()
            })
        } //: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func didDidMiss() {
        print("Tapped Dismiss")
    }
}

// MARK: - Preveiw
struct FruitListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView(fruits: fruitsData)
    }
}
