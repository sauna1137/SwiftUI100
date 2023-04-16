//
//  Alert.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/16.
//

import SwiftUI

struct Alert1: View {
    @State var showingAlert = false
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }, label: {
            Text("アラート表示")
        }).alert(isPresented: self.$showingAlert) {
            Alert(
                title: Text("タイトル"),
                message: Text("メッセージ"),
                primaryButton: .default(Text("OK")) {
                    print("OK")
                }, secondaryButton: .destructive(Text("キャンセル")) {
                    print("キャンセル")
                })
        }
    }
}


struct Alert2: View {
    @State var showingAlert = false
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("アラート1")
        }
        .alert(isPresented: self.$showingAlert) {
            Alert(title: Text("メッセージ"), message: Text(""), dismissButton: .default(Text("OK")))
        }
    }
}

struct Alert1_Previews: PreviewProvider {
    static var previews: some View {
        Alert2()
    }
}
