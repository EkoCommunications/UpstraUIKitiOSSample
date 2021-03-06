//
//  AppDelegate.swift
//  UpstraUIKitiOSSample
//
//  Created by Nontapat Siengsanor on 8/9/2563 BE.
//  Copyright © 2563 Upstra. All rights reserved.
//

import UIKit
import AmityUIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        AmityUIKitManager.setup("b3babb5e32dbf2314935d81e0301438fd85b84b7b2316a2e")
        AmityUIKitManager.registerDevice(withUserId: "ios0000", displayName: "iOS User")
        
        // custom event
        AmityUIKitManager.set(eventHandler: CustomEventHandler())
        
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

