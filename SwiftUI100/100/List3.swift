//
//  List3.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/16.
//

import SwiftUI

struct List3: View {
    // セクションタイトルのデータ
    let sectionTitles = ["Section 1", "Section 2", "Section 3"]

    var body: some View {
        NavigationView {
            List {
                // Section 1
                Section(header: Text("Section 1")) {
                    Text("Item 1-1")
                    Text("Item 1-2")
                    Text("Item 1-3")
                }

                // Section 2
                Section(header: Text("Section 2")) {
                    Text("Item 2-1")
                    Text("Item 2-2")
                    Text("Item 2-3")
                }

                // Section 3
                Section(header: Text("Section 3")) {
                    Text("Item 3-1")
                    Text("Item 3-2")
                    Text("Item 3-3")
                }
            }
            .listStyle(.automatic) // セクションのスタイルを適用
            .navigationBarTitle("Sectioned List") // ナビゲーションバーのタイトルを設定
        }
    }
}

struct List3_Previews: PreviewProvider {
    static var previews: some View {
        List3()
    }
}

