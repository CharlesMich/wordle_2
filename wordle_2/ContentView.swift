//
//  GameView.swift
//  wordle_2
//
//  Created by Charles Michael on 2/15/25.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationStack {
            Text("Hello World")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        Button {
//                            follows
                        } label: {
                            Image(systemName: "questionmark.circle")
                        }
                    }
                    ToolbarItem(placement: .principal){
                        Text("WORDLE")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(.primary)
                        
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        HStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "chart.bar")
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "gearshape.fill")
                            }
                        }
                    }
                }
        }
    }
}

#Preview {
    GameView()
}
