//
//  SwiftUI100App.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/10.
//

import SwiftUI


// 従来のAppDelegateを置き換える役割

@main
struct SwiftUI100App: App {
    var body: some Scene {
        WindowGroup {
            ContentView1()
        }
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // アプリが起動したときの処理
    }
}
