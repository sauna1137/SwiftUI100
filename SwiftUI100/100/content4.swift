//
//  content4.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/12.
//

import SwiftUI

struct content4: View {
    var body: some View {
        HStack {
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image("image1")
                .resizable()
                .frame(width: 42, height: 42)
        }
        .padding(16)
    }
}

struct content4_Previews: PreviewProvider {
    static var previews: some View {
        content4()
    }
}
