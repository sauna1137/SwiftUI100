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
        ContentView2a()
    }
}

struct ContentView1a: View {
    var body: some View {
        Image("image1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 200)
            .opacity(0.5)
            .position(x: 200, y: 300)
    }
}

struct ContentView2a: View {
    var body: some View {
        Image("image1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .offset(CGSize(width: 0, height: -100))
    }
}
