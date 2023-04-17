//
//  Collection4.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/18.
//

import SwiftUI

// セルを定義
struct CustomCell4: View {
    let item: Int
    var geometry: GeometryProxy

    var body: some View {
        VStack {
            Image("image1")
                .resizable()
                .scaledToFit()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: geometry.size.width / 2)
                .clipShape(Circle())
            Text("Item \(item)")
                .font(.system(size: 16))
        }
    }
}

struct Collection4: View {
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
                        CustomCell4(item: item, geometry: geometry)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct Collection4_Previews: PreviewProvider {
    static var previews: some View {
        Collection4()
    }
}
