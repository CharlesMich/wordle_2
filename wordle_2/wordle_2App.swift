//
//  wordle_2App.swift
//  wordle_2
//
//  Created by Charles Michael on 2/15/25.
//

import SwiftUI

@main
struct wordle_2App: App {
    @StateObject var dm = WordleDataModel()
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
        }
    }
}
