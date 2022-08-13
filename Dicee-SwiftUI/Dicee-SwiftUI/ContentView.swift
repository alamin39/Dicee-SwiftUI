//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Al-Amin on 13/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNo = 1
    @State var rightDiceNo = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(imageNo: leftDiceNo)
                    DiceView(imageNo: rightDiceNo)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNo = Int(arc4random() % 6 + 1)
                    rightDiceNo = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 30))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let imageNo: Int
    
    var body: some View {
        Image("dice\(imageNo)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
