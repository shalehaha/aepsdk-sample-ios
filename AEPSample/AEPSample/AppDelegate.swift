//
//  AppDelegate.swift
//  AEPSample
//
//  Created by Jiabin Geng on 6/29/20.
//  Copyright © 2020 Adobe. All rights reserved.
//

import UIKit
import AEPSampleExtension
import AEPServices
import AEPEventhub

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        EventHub.shared.registerExtension(AEPSampleExtension.self){_ in
            
        }
        EventHub.shared.start()
        
        EventHub.shared.dispatch(event: Event(name: "test", type: .analytics, source: .requestContent, data: [:]))
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

