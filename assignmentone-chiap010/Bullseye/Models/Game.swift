//
//  Gme.swift
//  Bullseye
//
//  Created by Tommy Chiapete on 2/4/21.
//

import Foundation

struct Game {
    
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    
    func points(sliderValue:  Int) -> Int {
        
        // in Swift, the best practice is not to specify type if you don't have to
        
        //let difference = abs(target - sliderValue)
        //let awardedPoints = 100 - difference
        
        //return 100 - abs(target - sliderValue)
        // I tend to like the explicit "return" for more clarity for me, but this works too:
        100 - abs(target - sliderValue)
        
    }
    
}
