//
//  SettingView.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/13.
//

import SwiftUI

struct SettingView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical,
                       showsIndicators: false,
                       content: {
                        VStack(spacing: 20) {
                            
                            // MARK: - Section 1
                            GroupBox(
                                label: SettingsLabelView(labelText: "Fructus",
                                                         labelImage: "info.circle"),
                                content: {
                                    Divider().padding(.vertical, 4)
                                    HStack(alignment: .center, spacing: 10, content: {
                                        Image("logo")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 80, height: 80, alignment: .center)
                                            .cornerRadius(9)
                                        Text("Most fruits are naturally low in fat, sodium, and calories. None hvae cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                            .font(.footnote)
                                    })
                                }
                            )
                            
                            // MARK: - Section 2
                            GroupBox(label: SettingsLabelView(labelText: "Customization",
                                                              labelImage: "paintbrush"),
                                     content: {
                                        Divider().padding(.vertical, 4)
                                        Text("If ou wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screeen again.")
                                            .padding(.vertical, 8)
                                            .frame(minHeight: 60)
                                            .layoutPriority(1)
                                            .font(.footnote)
                                            .multilineTextAlignment(.leading)
                                        
                                        Toggle(isOn: $isOnboarding, label: {
                                            if isOnboarding {
                                                Text("Restarted".uppercased())
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color.green)
                                            } else {
                                                Text("Restart".uppercased())
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color.secondary)
                                            }
                                        })
                                        .padding()
                                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                                     }
                            )
                            
                            // MARK: - Section 3
                            GroupBox(label: SettingsLabelView(labelText: "Application",
                                                              labelImage: "apps.iphone"),
                                     content: {
                                        SettingsRowView(name: "Developer", content: "GN")
                                        SettingsRowView(name: "Designer", content: "Josh")
                                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                                        SettingsRowView(name: "WebSite", linkLabel: "GoodNeighborhood", linkDestination: "www.goodneighborhood.kr")
                                        SettingsRowView(name: "Twitter", linkLabel: "@soromiso", linkDestination: "twitter.com/soromiso")
                                        SettingsRowView(name: "SwiftUI", content: "2.0")
                                        SettingsRowView(name: "Version", content: "1.1.0")
                                     }
                            )
                        } //: VStack
                        .navigationBarTitle(Text("Settings"),
                                            displayMode: .large)
                        .navigationBarItems(trailing: Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        }))
                        .padding()
            }) //: Scroll
        } //: Navigation
    }
}

// MARK: - Preview
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
