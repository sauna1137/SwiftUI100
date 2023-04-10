//
//  1.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/10.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        Image("image1") // 画像を読み込む
            .resizable() // サイズ変更を可能にする
            .aspectRatio(contentMode: .fit) // 縦横比を維持し、View内に収まるように調整
            .frame(width: 150, height: 200) // フレームを設定
            .background(Color.red) // 背景色を設定
    }
}

struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
