//
//  AppDelegate.swift
//  NotificationShanth
//
//  Created by Vidushi Duhan on 05/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit
import UserNotifications
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        // Override
//        point for customization after application launch.
        UNUserNotificationCenter.current().requestAuthorization(options: [.badge,.alert,.sound]) { (success, error) in
            
            
            if(error != nil){
                
                
                print("authorization unsuccessful")
            }
                else
                {
                    
                    print("successful")
                    
                }
            }
            
        
        
        
        
        
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

