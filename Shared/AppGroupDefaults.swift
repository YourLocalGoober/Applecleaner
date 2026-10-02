//
//  AppGroupDefaults.swift
//  Applecleaner
//
//  Created by Alin Lupascu on 9/30/25.
//

import Foundation

extension UserDefaults {
    static let appGroup = UserDefaults(suiteName: "group.com.YourLocalGoober.Applecleaner")!

    struct Keys {
        static let showAppIconInMenu = "showAppIconInMenu"
    }

    // Setting for showing app icon in context menu
    static var showAppIconInMenu: Bool {
        get {
            return appGroup.bool(forKey: Keys.showAppIconInMenu)
        }
        set {
            appGroup.set(newValue, forKey: Keys.showAppIconInMenu)
        }
    }
}
