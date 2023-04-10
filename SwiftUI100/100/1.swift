//
//  1.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/10.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        Image("image1")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 200)
            .clipped()
            .background(Color.red)
    }
}

struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
