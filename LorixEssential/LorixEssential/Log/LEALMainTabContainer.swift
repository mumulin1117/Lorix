//
//  LEALMainTabContainer.swift
//  LorixEssential
//
//  Created by LorixEssential on 2026/3/6.
//

import UIKit

class LEALMainTabContainer: UITabBarController {
    
    private let LEALFloatingHubBacking = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        LEALInitializeSonicHubs()
        LEALConfigureFloatingAesthetics()
    }
    
    private func LEALInitializeSonicHubs() {
        let LEALStream = LEALNavigationWrapper(rootViewController: LEALStreamGallery())
        LEALStream.tabBarItem = UITabBarItem(title: nil, image: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "rhythmicEarLor0")?.withRenderingMode(.alwaysOriginal), selectedImage: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "rhythmicEarLor0ba")?.withRenderingMode(.alwaysOriginal))
        
        let LEALLab = LEALNavigationWrapper(rootViewController: LEALCommunityViewController())
        LEALLab.tabBarItem = UITabBarItem(title: nil, image: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "rhythmicEarLor1")?.withRenderingMode(.alwaysOriginal), selectedImage: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "rhythmicEarLor1ba")?.withRenderingMode(.alwaysOriginal))
        
        let LEALExplore = LEALNavigationWrapper(rootViewController: LEALDiscoverExchangeViewController())
        LEALExplore.tabBarItem = UITabBarItem(title: nil, image: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "rhythmicEarLor2")?.withRenderingMode(.alwaysOriginal), selectedImage: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "rhythmicEarLor2ba")?.withRenderingMode(.alwaysOriginal))
        
        let LEALArtist = LEALNavigationWrapper(rootViewController: LEALUserStagelViewController())
        LEALArtist.tabBarItem = UITabBarItem(title: nil, image: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "rhythmicEarLor3")?.withRenderingMode(.alwaysOriginal), selectedImage: LEALVocalResonanceCorelorix.LEALSonicMadeing(lealNames: "rhythmicEarLor3ba")?.withRenderingMode(.alwaysOriginal))
        
        viewControllers = [LEALStream, LEALLab, LEALExplore, LEALArtist]
    }
    
    private func LEALConfigureFloatingAesthetics() {
        // Customize the tab bar appearance to match the purple floating style
        tabBar.tintColor = UIColor(red: 0.33, green: 0.04, blue: 0.64, alpha: 0.8600)
        tabBar.unselectedItemTintColor = UIColor.white.withAlphaComponent(0.5)
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
        tabBar.backgroundColor = UIColor(red: 0.33, green: 0.04, blue: 0.64, alpha: 0.8600)
        
        LEALFloatingHubBacking.backgroundColor = UIColor(red: 0.35, green: 0.12, blue: 0.65, alpha: 1.0)
        LEALFloatingHubBacking.layer.cornerRadius = 35
        LEALFloatingHubBacking.translatesAutoresizingMaskIntoConstraints = false
        
        tabBar.insertSubview(LEALFloatingHubBacking, at: 0)
        
        NSLayoutConstraint.activate([
            LEALFloatingHubBacking.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
            LEALFloatingHubBacking.bottomAnchor.constraint(equalTo: tabBar.bottomAnchor, constant: -10),
            LEALFloatingHubBacking.widthAnchor.constraint(equalTo: tabBar.widthAnchor, multiplier: 0.9),
            LEALFloatingHubBacking.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
}
class LEALNavigationWrapper: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barStyle = .black
        navigationBar.prefersLargeTitles = false
    }
}
