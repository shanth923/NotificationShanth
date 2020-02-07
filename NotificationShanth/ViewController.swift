//
//  ViewController.swift
//  NotificationShanth
//
//  Created by Vidushi Duhan on 05/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().delegate = self
        
        // Do any additional setup after loading the view.
    }

    @IBAction func getNotifaction(_ sender: Any) {
        
        createFunction()
        
        
        
    }
  
    
    func createFunction(){
        let content = UNMutableNotificationContent()
        content.title = "osos"
        content.subtitle = "message"
        content.body = "hai this is shanth"
        
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2.0, repeats: false)
        
        let request = UNNotificationRequest(identifier: "Identifier", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { (error) in
            print(error as Any)
        }
        
    }
    
    
}


extension ViewController:UNUserNotificationCenterDelegate{
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        
        completionHandler([.alert,.sound,.badge])
        
    }
    
    
}

