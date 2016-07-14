//
//  AppDelegate.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let takeMeToBahamas = Plane(name: "BahamaAir", weight: 2000, maxSpeed: 500, maxAltitude: 10000)
        takeMeToBahamas.takeoff()
        print("Flight has taken off and now the altitude is: \(takeMeToBahamas.altitude)")
        print("Flight has taken off and now the speed is: \(takeMeToBahamas.speed)")
        
        let airForceOne = Jet(name: "Air Force One", weight: 1500, maxSpeed: 750, maxAltitude: 10000)
        airForceOne.speed = 750
        airForceOne.altitude = 7000
        airForceOne.afterburner()
        
        print("Hold on tight, Barack! Current altitude: \(airForceOne.altitude), Current Speed: \(airForceOne.speed)")
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////
