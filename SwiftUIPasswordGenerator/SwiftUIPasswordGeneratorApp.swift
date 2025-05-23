//
//  SwiftUIPasswordGeneratorApp.swift
//  SwiftUIPasswordGenerator
//
//  Created by Angelos Staboulis on 23/5/25.
//

import SwiftUI

@main
struct SwiftUIPasswordGeneratorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(passwordText: "", showPassword: false)
        }
    }
}
