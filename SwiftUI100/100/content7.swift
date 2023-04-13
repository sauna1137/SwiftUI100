//
//  content7.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/12.
//

import SwiftUI

struct content7: View {
    var pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
    @State private var selectedPokemon = 0 // 選択されたindexを保持するStateを定義

    var body: some View {
        Picker("Pokemon", selection: $selectedPokemon) { // Pickerを定義
            ForEach(0 ..< pokemons.count) { // 配列の数だけ要素を生成
                Text(self.pokemons[$0]) // 各要素に対応する文字列を表示
            }
        }.pickerStyle(WheelPickerStyle()) // WheelPickerStyleを適用
            .onReceive([self.selectedPokemon].publisher.first()) { (value) in // 選択が変更された時のアクションを定義
                print("selectedPokemon: \(value)") // 選択されたindexを表示
                print(self.pokemons[value]) // 選択された名前を表示
        }
    }

}

struct content7_Previews: PreviewProvider {
    static var previews: some View {
        content7()
    }
}
