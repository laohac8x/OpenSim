//
//  RevealBundleInFinderAction.swift
//  OpenSim
//
//  Created by Nguyen Mau Dat on 11/11/19.
//  Copyright © 2019 Luo Sheng. All rights reserved.
//

import Foundation
import Cocoa

final class RevealBundleInFinderAction: ApplicationActionable {
    
    var application: Application?
    
    let title = UIConstants.strings.actionRevealBundleInFinder
    
    let icon = templatize(#imageLiteral(resourceName: "reveal"))
    
    let isAvailable: Bool = true
    
    init(application: Application) {
        self.application = application
    }
    
    func perform() {
        if let url = application?.bundleUrl {
            NSWorkspace.shared.open(url)
        }
    }
    
}
