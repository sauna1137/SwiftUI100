//
//  content2.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/10.
//

import SwiftUI

struct content2: View {
    var body: some View {
        Image("image1") // 画像を読み込む
            .resizable() // サイズを自由に変更可能にする
            .scaledToFill() // アスペクト比を維持したまま、Viewのサイズに画像をフィットさせる
            .frame(width: 150, height: 200) // Viewのサイズを指定する
            .clipped() // フレームからはみ出る画像を切り取る
            .background(Color.red) // Viewの背景色を赤色に設定する
    }
}

struct content2_Previews: PreviewProvider {
    static var previews: some View {
        content2()
    }
}
