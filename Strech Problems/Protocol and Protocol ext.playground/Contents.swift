//: Playground - noun: a place where people can play

import UIKit

protocol Vehicle {
    var speed: Double {get}
    var isMoving: Bool { get set}
    mutating func startCar()
    mutating func stopCar()
    
}

extension Vehicle {
    
    mutating func startCar() {
        if isMoving == false {
            isMoving = true
            print(isMoving)
        }
        
    }
    mutating func stopCar() {
        if isMoving == true {
            isMoving = false
            print(isMoving)
        }
        
    }
    
}

class Tesla: Vehicle {
    var speed: Double
    var isMoving: Bool
    var charging: Bool
    var battery: Float
    
    init(speed: Double, isMoving: Bool, charging: Bool, battery: Float){
        self.speed = speed
        self.isMoving = isMoving
        self.charging = charging
        self.battery = battery
    }
}

class x300LawnMower: Vehicle {
    var speed: Double
    var isMoving: Bool
    var isMowing: Bool
    var is4x4: Bool
    
    
    init(speed: Double, isMoving: Bool, isMowing: Bool, is4x4: Bool) {
        self.speed = speed
        self.isMoving = isMoving
        self.isMowing = isMowing
        self.is4x4 = is4x4
    }
}








