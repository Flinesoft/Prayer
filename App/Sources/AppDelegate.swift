//
//  Created by Cihat Gündüz on 09.01.17.
//  Copyright © 2017 Flinesoft. All rights reserved.
//

import Imperio
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Stored Instance Properties
    var window: UIWindow?
    var initialFlowCtrl: InitialFlowController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()

        // setup global stuff
        Logger.shared.setup()
        ErrorHandler.shared.setup(window: window!)
        Branding.shared.setup(window: window!)

        // start initial flow
        initialFlowCtrl = SettingsFlowController()
        initialFlowCtrl?.start(from: window!)

        return true
    }
}
