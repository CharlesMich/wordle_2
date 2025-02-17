//
//  Color+Extension.swift
//  wordle_2
//
//  Created by Charles Michael on 2/16/25.
//

import SwiftUI

extension Color {
    static var wrong1: Color {
        Color(UIColor(named: "wrong")!)
    }
    static var misplaced1: Color {
        Color(UIColor(named: "misplaced")!)
    }
    static var correct1: Color {
        Color(UIColor(named: "correct")!)
    }
    static var unused1: Color {
        Color(UIColor(named: "unused")!)
    }
    static var systemBackground: Color {
        Color(.systemBackground)
    }
    
}
