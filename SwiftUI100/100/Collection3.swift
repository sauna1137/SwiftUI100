//
//  Collection3.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/18.
//

import SwiftUI

struct Collection3: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    let items = Array(1...50)

    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(items, id: \.self) { item in
                        Text("Item \(item)")
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: geometry.size.width / 2)
                            .background(Color.green)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct Collection3_Previews: PreviewProvider {
    static var previews: some View {
        Collection3()
    }
}
