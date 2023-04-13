//
//  content3.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/11.
//

import SwiftUI

struct content3: View {
    var body: some View {
        Image("image1") // 画像を読み込む
            .resizable() // リサイズ可能にする
            .scaledToFill() // 規定の大きさに拡大・縮小する
            .frame(width: 150, height: 150) // フレームサイズを指定
            .cornerRadius(75) // 丸みを帯びた角を描画
            .overlay( // 枠線を描画
                RoundedRectangle(cornerRadius: 75).stroke(Color.black, lineWidth: 4)
            )
    }
}

struct content3_Previews: PreviewProvider {
    static var previews: some View {
        content3()
    }
}
