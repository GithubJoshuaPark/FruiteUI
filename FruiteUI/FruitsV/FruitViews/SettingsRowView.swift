//
//  SettingsRowView.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/13.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    var name           : String
    var content        : String? = nil
    var linkLabel      : String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else  {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Josh")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(name: "Website",
                            linkLabel: "GN",
                            linkDestination: "www.goodneighborhood.kr")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
