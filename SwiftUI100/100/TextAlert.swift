//
//  TextAlert.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/18.
//

import SwiftUI

struct TextAlert: View {
    @State var numberString: String = "" // 入力された文字列を格納する変数
    @State var showingAlert: Bool = false // アラートの表示フラグ
    @State var showingSheet: Bool = false // シートの表示フラグ

    var body: some View {
        VStack {
            TextField("Input Number", text: $numberString) // テキスト入力フィールド
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle()) // 枠を丸くする

            Button(action: {
                guard Double(self.numberString) != nil else { // 入力された文字列が数値に変換できるかチェック
                    self.showingAlert = true // アラートを表示
                    return
                }
                self.showingSheet = true // シートを表示
            }) {
                Text("Show Sheet") // シートを表示するボタン
            }
        }
        .alert(isPresented: $showingAlert) { // アラートを表示する
            Alert(title: Text("Error"), message: Text("Please Input Number"), dismissButton: .default(Text("Close")))
        }
        .sheet(isPresented: $showingSheet) { // シートを表示する
            Text("\(self.numberString) can convert to Double") // 入力された文字列が数値に変換できることを表示
        }
    }

}

struct TextAlert_Previews: PreviewProvider {
    static var previews: some View {
        TextAlert()
    }
}
