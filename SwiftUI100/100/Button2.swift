//
//  Button2.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/17.
//

import SwiftUI

struct Button2: View {
    @State var text = "sauna"

    var body: some View {
        VStack {
            Text(text)
            Button(action: {
                if self.text == "sauna" {
                    self.text = "forever"
                } else {
                    self.text = "sauna"
                }
            }) {
                HStack {
                    Image("image1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    Text("Tap Me!!")
                }
                .padding()
                .border(Color.gray, width: 0.5)
            }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct Button2_Previews: PreviewProvider {
    static var previews: some View {
        Button2()
    }
}
