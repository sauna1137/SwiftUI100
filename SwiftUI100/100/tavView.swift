//
//  tavView.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/13.
//

import SwiftUI

struct tavView: View {
    var body: some View {
        // タブビューを作成
        TabView {
            // タブ1
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill") // システムアイコン
                }
            // タブ2
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            // タブ3
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")

                }
        }
        .font(.headline)
    }

}

struct tavView_Previews: PreviewProvider {
    static var previews: some View {
        tavView()
    }
}
