//
//  AppDelegate.swift
//  iWatchIt
//
//  Created by Xavi Tordera on 22/03/2020.
//  Copyright © 2020 Xavi Tordera. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        loadFirstScreen()
        initRealm()
        
        return true
    }
    
    func loadFirstScreen() {
        let splash = FakeSplashRouter.shared.createModule()
        Navigation.shared.setNavigationController(firstVC: splash)
    }
    
    func initRealm() {
        RealmManager.initRealm()
    }
    
}

