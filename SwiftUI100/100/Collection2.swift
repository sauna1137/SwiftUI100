//
//  Collection2.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/17.
//

import SwiftUI

struct Collection2: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    let items = Array(1...50)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(items, id: \.self) { item in
                    Text("Item \(item)")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                        .background(Color.green)
                        .cornerRadius(24)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct Collection2_Previews: PreviewProvider {
    static var previews: some View {
        Collection2()
    }
}
