//
//  Collections.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/17.
//

import SwiftUI

struct Pokemon: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct PokemonCell: View {
    let pokemon: Pokemon

    // PokemonCell の本体
    var body: some View {
        // 画像と名前を重ねる
        ZStack {
            // ポケモンの画像を表示
            Image(pokemon.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
            // 名前を下部に表示
            VStack {
                Spacer()
                Text(pokemon.name)
                    .font(Font.system(size: 20.0).bold()) // フォントサイズとスタイルを設定
                    .frame(maxWidth: .infinity, maxHeight: 32) // セルの幅いっぱいに広げる
                    .background(Color.gray) // 背景色を灰色に設定
                    .foregroundColor(Color.white) // 文字色を白に設定
                    .opacity(0.8) // 透明度を 0.8 に設定
            }
        }
    }
}


struct Collections: View {

    let columns: Int = 3
    let pokemons = [
        Pokemon(name: "カビゴン", imageName: "image1"),
        Pokemon(name: "ゲンガー", imageName: "image1"),
        Pokemon(name: "ヌオー", imageName: "image1"),
        Pokemon(name: "コイル", imageName: "image1"),
        Pokemon(name: "ミニリュウ", imageName: "image1"),
        Pokemon(name: "ヤドン", imageName: "image1"),
        Pokemon(name: "コダック", imageName: "image1"),
    ]
    var body: some View {
        GeometryReader { geometry in
            ScrollView(showsIndicators: false) {
                ForEach(0..<self.pokemons.count/self.columns) { rowIndex in
                    HStack {
                        ForEach(0..<self.columns) { columnIndex in
                            self.getPokemonCell(
                                pokemon: self.getPokemon(rowIndex: rowIndex, columnIndex: columnIndex),
                                width: self.cellWidth(width: geometry.size.width - 10),
                                height: self.cellHeight(width: geometry.size.width))
                        }
                    }
                }

                if (self.pokemons.count % self.columns > 0) {
                    HStack {
                        ForEach(0..<self.pokemons.count % self.columns) { lastColumnIndex in
                            self.getPokemonCell(
                                pokemon: self.getPokemon(lastColumnIndex: lastColumnIndex),
                                width: self.cellWidth(width: geometry.size.width - 10),
                                height: self.cellHeight(width: geometry.size.width))
                        }
                        Spacer()
                    }
                }
            }
        }.padding()
    }


    private func getPokemon(rowIndex: Int, columnIndex: Int) -> Pokemon {
        // 指定された行と列からポケモンを取得
        return pokemons[columns * rowIndex + columnIndex]
    }

    private func getPokemon(lastColumnIndex: Int) -> Pokemon {
        // 最後の行の指定された列からポケモンを取得
        return self.pokemons[self.columns * (self.pokemons.count / self.columns) + lastColumnIndex]
    }

    private func cellWidth(width: CGFloat) -> CGFloat {
        // セルの幅を計算
        return width / CGFloat(columns)
    }

    private func cellHeight(width: CGFloat) -> CGFloat {
        // セルの高さを計算
        return cellWidth(width: width) * 1.5
    }

    private func getPokemonCell(pokemon: Pokemon, width: CGFloat, height: CGFloat) -> AnyView {
        // ポケモンセルを作成し、サイズとスタイルを設定
        return AnyView(PokemonCell(pokemon: pokemon)
            .frame(width: width,
                   height: height)
            .border(Color.black, width: 2) // セルに黒い枠線を追加
            .clipped()) // 枠線の外側にある部分を切り取る
    }

}

struct Collections_Previews: PreviewProvider {
    static var previews: some View {
        Collections()
    }
}
