//
//  content6.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/12.
//

import SwiftUI

struct content6: View {
        let fruits = ["Apple", "Banana", "Orange", "Grape", "Cherry", "Peach"]
        
        var body: some View {
            NavigationView {
                List(fruits, id: \.self) { fruit in
                    NavigationLink(destination: content6b(fruit: fruit)) {
                        Text(fruit)
                    }
                }
            }
        }
    }

struct content6_Previews: PreviewProvider {
    static var previews: some View {
        content6()
    }
}
