//
//  content5.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/12.
//

import SwiftUI

struct content5: View {
    var body: some View {
        NavigationView { // ナビゲーション用のビュー
            Image("") // 何か一つコンポーネントが必要
                .navigationBarTitle("タイトル") // タイトル
                .navigationBarHidden(false) // 表示
//                .navigationBarTitleDisplayMode(.inline) // デフォルト
                .navigationBarTitleDisplayMode(.large) // ラージタイトル
        }
    }
}

struct content5_Previews: PreviewProvider {
    static var previews: some View {
        content5()
    }
}
