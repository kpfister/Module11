//: Playground - noun: a place where people can play

import UIKit

protocol Vehicle {
    
    var speed: Double {get}
    var isMoving: Bool {get set}
    
     mutating func startCar()
    mutating func stopCar()
}

extension Vehicle {
    mutating func startCar() {
        if isMoving == false {
        isMoving = true
        print("Is Moving")
        }
    }
    
    mutating func stopCar() {
        if isMoving == true {
            isMoving = false
            print("Is not moving")
        }
    }
}


class Honda: Vehicle {

    var speed: Double
    var isMoving: Bool
    
    
    init(speed: Double, isMoving: Bool){
    self.speed = speed
    self.isMoving = isMoving
    }
}


class OldAndBusted: Vehicle {
    
    var speed:Double
    var isMoving: Bool
    
    init(speed: Double, isMoving: Bool){
        self.speed = speed
        self.isMoving = isMoving
        }
    
    
}