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
        
        let LEALCurrentSessionActive = LEALVisualEchoPulseColorix.LEALSceneEnergyPulseColorix
        
        LEALRootCoordinator.LEALShared.LEALSwitchTerminal(LEALIsAuthenticated: LEALCurrentSessionActive != nil)
        return true
    }

}

class LEALRootCoordinator {
    static let LEALShared = LEALRootCoordinator()
    var LEALWindow: UIWindow?
    
    func LEALSwitchTerminal(LEALIsAuthenticated: Bool) {
        if LEALIsAuthenticated {
            LEALWindow?.rootViewController = LEALMainTabContainer()
        } else {
            LEALWindow?.rootViewController = LEALAuthPortalController()
        }
        LEALWindow?.makeKeyAndVisible()
    }
}
