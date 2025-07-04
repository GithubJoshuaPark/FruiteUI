//
//  SourceLinkView.swift
//  FruiteUI
//
//  Created by Joshua Park on 2021/06/13.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}


// MARK: - Preview
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
