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
        // GeometryReader を使用してビューのサイズを取得
                GeometryReader { geometry in
                    // スクロールビューを作成
                    ScrollView {
                        // LazyVGrid を作成し、各行に2つのセルを配置
                        LazyVGrid(columns: columns, spacing: 12) {
                            // 配列内の各アイテムに対して繰り返し処理
                            ForEach(items, id: \.self) { item in
                                // VStack を使用して画像とテキストを縦に配置
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
