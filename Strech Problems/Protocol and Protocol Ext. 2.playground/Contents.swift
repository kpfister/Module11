//: Playground - noun: a place where people can play

import Cocoa

protocol Vehicle {
    var speed: Double {get}
    var isMoving: Bool {get set}
    
    mutating func startMoving ()
    mutating func stopMoving ()
}

extension Vehicle {
    mutating func stopMoving() {
        if isMoving == true {
            isMoving = false
            print(" We've run out of petrol")
        }
    }
    mutating func startMoving() {
        if isMoving == false {
            isMoving = true
            print("Ve ar on ze autobahn, YA!")
        }
        
    }
    
}

class Volkswagon : Vehicle {
    
    var speed: Double
    
    var isMoving: Bool
    
    init(speed: Double, isMoving: Bool){
        self.speed = speed
        self.isMoving = isMoving
    }
    
}

class Ducati : Vehicle {
    var speed: Double
    var isMoving: Bool
    var areLadiesWatching: Bool
    
    init(speed:Double, isMoving: Bool, areLadiesWatching: Bool){
        self.speed = speed
        self.isMoving = isMoving
        self.areLadiesWatching = true
    }
    
}



