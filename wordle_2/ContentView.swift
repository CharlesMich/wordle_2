//
//  GameView.swift
//  wordle_2
//
//  Created by Charles Michael on 2/15/25.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var dm: WordleDataModel
    var body: some View {
        NavigationStack {
            Text("Hello World")
            VStack(spacing: 3) {
                ForEach(0...5, id: \.self) { index in
                    GuessView(guess: $dm.guesses[0])
                        .modifier(Shake(animatableData: CGFloat(dm.incorrectAttempts[index])))
                }

            }
            .frame(width: Global.boardWidth, height: 6 * Global.boardWidth / 5)
            Spacer()
            Keyboard()
                .scaleEffect(Global.keyboardScale)
                .padding(.top)
            Spacer()
                .navigationViewStyle(.stack)
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
        .navigationViewStyle(.stack)
    }
}

#Preview {
    GameView()
        .environmentObject(WordleDataModel())
       
}
