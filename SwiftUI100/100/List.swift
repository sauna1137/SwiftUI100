//
//  content6.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/12.
//

import SwiftUI

struct content6: View {
        let fruits = ["Apple", "Banana", "Orange", "Grape", "Cherry", "Peach"]
        
    var body: some View {
        NavigationView { // ナビゲーションビューを表示する
            List(fruits, id: \.self) { fruit in // fruitsの要素をリストで表示する
                // ナビゲーションリンク　新しいビューに遷移するために使用されるコンポーネント
                NavigationLink(destination: content6b(fruit: fruit)) {
                    Text(fruit) // テキストを表示する
                }
            }
        }
    }

    }

struct content6_Previews: PreviewProvider {
    static var previews: some View {
        content6()
    }
}
