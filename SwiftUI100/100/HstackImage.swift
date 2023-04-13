//
//  content4.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/12.
//

import SwiftUI

struct content4: View {
    var body: some View {
        HStack { // 横に並べる要素を格納する
            Image("image1") // 画像を読み込む
                .resizable()
                .frame(width: 42, height: 42) // サイズを指定する
            Spacer() // 余白を空ける
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
        }
        .padding(16)
    }
}

struct content4_Previews: PreviewProvider {
    static var previews: some View {
        content4()
    }
}
