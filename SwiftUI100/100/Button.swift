//
//  Button.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/16.
//

import SwiftUI

struct ButtonContent: View {
    // カスタムボタンのテキスト状態を保持する変数
    @State var text = "押す前"

    var body: some View {
        VStack {
            // 現在のテキスト状態を表示する
            Text(text)
            // ボタンが押された時のアクションを定義
            Button(action: {
                // テキスト状態を"押した後"に更新する
                self.text = "押した後"
            }) {
                // ボタンのラベルを表示する
                Text("Tap Me!!")
            }
        }
    }
}

struct ButtonContent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContent()
    }
}
