//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    let maxAltitude : Double
    var altitude : Double = 0
    
    var inFlight : Bool {return (speed > 0 && altitude > 0 ? true:false)}
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if !inFlight {
            speed = maxSpeed/10
            altitude = maxAltitude/10
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight {
            decelerate()
            
            if altitude + maxAltitude/10 < maxAltitude {
                altitude += maxAltitude/10
            } else {
                altitude = maxAltitude
            }
        }
    }
    
    func dive() {
        if !(altitude == 0) {
            accelerate()
            
            if altitude - maxAltitude/10 > 0 {
                altitude -= maxAltitude/10
            } else {
                altitude = 0
            }
        }
    }
    
    func bankRight() {
        if inFlight {
            heading += 45
            if heading > 360 {
                heading -= 360
            }
            
            if speed - speed/10 > 0 {
                speed -= speed/10
            } else {
                speed = 0
            }
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            if heading < 0 {
                heading += 360
            }
            
            if speed - speed/10 > 0 {
                speed -= speed/10
            } else {
                speed = 0
            }
        }
    }
}