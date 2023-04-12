//
//  content6b.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/12.
//

import SwiftUI

struct content6b: View {
    let fruit: String

    var body: some View {
        Text(fruit)
    }
}

struct content6b_Previews: PreviewProvider {
    static var previews: some View {
        content6b(fruit: "Apple")
    }
}
