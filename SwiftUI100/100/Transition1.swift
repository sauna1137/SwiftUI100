//
//  Transition1.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/18.
//

import SwiftUI

struct Transition1: View {
    @State var isActive = false

    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.isActive = true
                }) {
                    Text("Tap Me!!")
                }

                NavigationLink(destination: Text("SecondView"),
                               isActive: $isActive) {
                    EmptyView()
                }
            }
        }
    }
}

struct Transition1_Previews: PreviewProvider {
    static var previews: some View {
        Transition1()
    }
}
