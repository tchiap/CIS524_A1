//
//  ContentView.swift
//  Bullseye
//
//  Created by Tommy Chiapete on 2/2/21.
// 

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                
            
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack {
                
                Text("1")
                    .bold()
                
                Slider(value: $sliderValue, in: 1.0...100.0)
                
                Text("100")
                    .bold()
            }
            
            Button(action: {
                // print is a developers best friend
                // print is an example of a function because it doesn't require declaring an instace
                print("Hello, SwiftUI!")
                
                alertIsVisible = true
                
            }) {
                Text("Hit Me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue = Int(sliderValue.rounded())
                
                    return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
              })
            
            
            
            
            
        }
    }
}

// code that controls the previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
