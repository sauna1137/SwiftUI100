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
        ScrollView { // スクロール可能なビューを作成
            LazyVGrid(columns: columns, spacing: 16) { // LazyVGridで指定した列数でアイテムを配置し、縦方向の間隔を16に設定
                ForEach(items, id: \.self) { item in // items 配列をループして各アイテムを表示
                    Text("Item \(item)") // アイテムの番号を表示するテキスト
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100) // フレームの最小幅、最大幅、最小高さを指定
                        .background(Color.green) // テキストの背景色を緑に設定
                        .cornerRadius(24) // 角を丸くする、半径を24に設定
                }
            }
            .padding(.horizontal) // 水平方向のパディングを適用
        }
    }
}

struct Collection2_Previews: PreviewProvider {
    static var previews: some View {
        Collection2()
    }
}
