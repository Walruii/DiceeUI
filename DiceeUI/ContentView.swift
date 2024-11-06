//
//  ContentView.swift
//  DiceeUI
//
//  Created by Inderpreet Bhatti on 05/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1;
    @State var rightDiceNumber = 4;
    var body: some View {
        ZStack {
            Image("GreenBackground")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNum: leftDiceNumber)
                    DiceView(diceNum: rightDiceNumber)
                }
                Spacer()
                Button("Roll")
                {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }
                .padding(.horizontal)
                .font(.system(size: 50, weight: .heavy))
                .foregroundStyle(.white)
                .background(.red)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let diceNum : Int
    var body: some View {
        Image("Dice\(diceNum)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}
