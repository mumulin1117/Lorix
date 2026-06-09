//
//  AppDelegate.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/6.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let LEALMainFrame = UIWindow(frame: UIScreen.main.bounds)
        self.window = LEALMainFrame
        
        LEALRootCoordinator.LEALShared.LEALWindow = LEALMainFrame
        
        LorixFleverConfig.shared.LorixFleverSwitchToOrganicRoot = { window in
            LEALRootCoordinator.LEALShared.LEALWindow = window
            let LEALCurrentSessionActive = LEALSonicFeedCelllori.palatalFrictionLor
            LEALRootCoordinator.LEALShared.LEALSwitchTerminal(LEALIsAuthenticated: LEALCurrentSessionActive != nil)
        }
        LorixFleverBridge.shared.LorixFleverInitialize(with: LEALMainFrame, application: application, launchOptions: launchOptions)
        
        LEALMainFrame.rootViewController = LorixFleverBridge.shared.LorixFleverMakeLaunchController()
        LEALMainFrame.makeKeyAndVisible()
        
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        LorixFleverBridge.shared.LorixFleverStorePushToken(deviceToken)
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        LorixFleverBridge.shared.LorixFleverHandleOpenURL(app, url: url, options: options)
    }

}

class LEALRootCoordinator {
    static let LEALShared = LEALRootCoordinator()
    var LEALWindow: UIWindow?
    
    func LEALSwitchTerminal(LEALIsAuthenticated: Bool) {
        if LEALIsAuthenticated {
            LEALWindow?.rootViewController = LEALMainTabContainer()
        } else {
            let LorixPortal = UINavigationController.init(rootViewController: LEALAuthPortalController())
            LorixPortal.navigationBar.isHidden = true
            LEALWindow?.rootViewController = LorixPortal
        }
        LEALWindow?.makeKeyAndVisible()
    }
}
