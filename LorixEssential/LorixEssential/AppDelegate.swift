import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let rhythmSoundRix = LEALBootRhythm(application: application, launchOptions: launchOptions)
        return LEALResolveBootRhythm(rhythmSoundRix)
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        LEALStoreRemoteBeat(deviceToken)
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        LEALOpenSonicRoute(app, url: url, options: options)
    }

}

private extension AppDelegate {
    typealias LEALBootRhythm = (application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
    
    func LEALResolveBootRhythm(_ rhythmSoundRix: LEALBootRhythm) -> Bool {
        let soundKernelRix = LEALCreateMainWindow()
        LEALAttachWindow(soundKernelRix)
        LEALInstallOrganicSwitch()
        LEALStartFleverBridge(soundKernelRix, rhythmSoundRix: rhythmSoundRix)
        LEALPresentFleverLaunch(on: soundKernelRix)
        return LEALFinishBoot(soundKernelRix)
    }
    
    func LEALCreateMainWindow() -> UIWindow {
        UIWindow(frame: UIScreen.main.bounds)
    }
    
    func LEALAttachWindow(_ soundKernelRix: UIWindow) {
        window = soundKernelRix
        LEALRootCoordinator.LEALShared.LEALWindow = soundKernelRix
    }
    
    func LEALInstallOrganicSwitch() {
        LorixFleverConfig.audioRelayLor.LorixFleverSwitchToOrganicRoot = { window in
            self.LEALReturnToOrganicRoot(window)
        }
    }
    
    func LEALReturnToOrganicRoot(_ soundKernelRix: UIWindow?) {
        LEALRootCoordinator.LEALShared.LEALWindow = soundKernelRix
        let LEALCurrentSessionActive = LEALCurrentSessionPulse()
        LEALRootCoordinator.LEALShared.LEALSwitchTerminal(LEALIsAuthenticated: LEALCurrentSessionActive)
    }
    
    func LEALCurrentSessionPulse() -> Bool {
        let vocalCoreLor = LEALSonicFeedCelllori.palatalFrictionLor
        return vocalCoreLor != nil
    }
    
    func LEALStartFleverBridge(_ soundKernelRix: UIWindow, rhythmSoundRix: LEALBootRhythm) {
        LorixFleverBridge.audioRelayLor.LorixFleverInitialize(with: soundKernelRix, application: rhythmSoundRix.application, minimalistBeatRix: rhythmSoundRix.launchOptions)
    }
    
    func LEALPresentFleverLaunch(on soundKernelRix: UIWindow) {
        let acousticRootRix = LorixFleverBridge.audioRelayLor.LorixFleverMakeLaunchController()
        soundKernelRix.rootViewController = acousticRootRix
    }
    
    func LEALFinishBoot(_ soundKernelRix: UIWindow) -> Bool {
        soundKernelRix.makeKeyAndVisible()
        return true
    }
    
    func LEALStoreRemoteBeat(_ deviceToken: Data) {
        let rhythmicStemLor = deviceToken
        LorixFleverBridge.audioRelayLor.LorixFleverStorePushToken(rhythmicStemLor)
    }
    
    func LEALOpenSonicRoute(_ app: UIApplication, url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
        LorixFleverBridge.audioRelayLor.LorixFleverHandleOpenURL(app, url: url, options: options)
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
