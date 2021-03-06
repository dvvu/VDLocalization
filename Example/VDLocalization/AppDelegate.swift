//
//  AppDelegate.swift
//  VDLocalization
//
//  Created by doanvanvu9992@gmail.com on 04/07/2020.
//  Copyright (c) 2020 doanvanvu9992@gmail.com. All rights reserved.
//

import UIKit
import VDLocalization

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
        self.window?.rootViewController = vc
        
        if !TKLocalizeSession.shared.isFirstTime {
            TKLocalizeSession.shared.isFirstTime = true
            TKLocalize.shared.loadLocalLanguage()
        }
        
        TKLocalize.shared.checkPackVersion()
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        TKLocalize.shared.checkPackVersion()
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

