//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
    let driver : String
    var sponsors : [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        if speed + maxSpeed/5 < maxSpeed {
            speed += maxSpeed/5
        } else {
            speed = maxSpeed
        }
    }
    
    override func decelerate() {
        if speed - maxSpeed/5 > 0 {
            speed -= maxSpeed/5
        } else {
            speed = 0
        }
    }
    
    func driftRight() {
        if speed > 0 {
            heading += 90
            speed -= speed/4
            
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func driftLeft() {
        if speed > 0 {
            heading -= 90
            speed -= speed/4
            
            if heading < 0 {
                heading += 360
            }
        }
    }

}