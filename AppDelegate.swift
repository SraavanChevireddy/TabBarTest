//
//  AppDelegate.swift
//  TabMenuTest
//
//  Created by Sraavan Chevireddy on 30/08/23.
//

import UIKit
import UserNotifications

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.provisional, .providesAppNotificationSettings, .alert, .sound, .badge]) { granted, error in
            if granted {
                print("You are in ")
            }
            if error != nil {
                print("This is error \(error?.localizedDescription)")
            }
        }
        UNUserNotificationCenter.current().delegate = self
        return true
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        print("\(userInfo)")
    }
}
