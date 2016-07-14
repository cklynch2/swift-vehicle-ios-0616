//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override func climb() {
        if inFlight {
            decelerate()
            
            if altitude + maxAltitude/5 < maxAltitude {
                altitude += maxAltitude/5
            } else {
                altitude = maxAltitude
            }
        }
    }
    
    override func dive() {
        if inFlight {
            accelerate()
            
            if altitude - maxAltitude/5 > 0 {
                altitude -= maxAltitude/5
            } else {
                altitude = 0
            }
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = 2 * maxSpeed
        }
    }
}