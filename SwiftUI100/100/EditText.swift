//
//  EditText.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/20.
//

import SwiftUI

struct EditText: View {
    var body: some View {
        (
            // "I"というテキストを作成
            Text("I ")
            // "love"というテキストを作成して、赤色に設定
            + Text("love ")
                .foregroundColor(Color.red)
            // "Snorlax"というテキストを作成して、黒色に設定、フォントを20に設定
            + Text("Snorlax")
                .foregroundColor(Color.black)
                .font(Font.system(size: 20).bold())
            // 改行を挿入
            + Text("!\n")
            // テキストを作成して、青色に設定
            + Text("Snorlax is most cute & cool& powerful Pokemon.")
                .foregroundColor(Color.blue)
        )
        // 行間を8に設定
        .lineSpacing(8)
    }

}

struct EditText_Previews: PreviewProvider {
    static var previews: some View {
        EditText()
    }
}
