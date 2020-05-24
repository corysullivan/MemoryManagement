//
//  StoryboardMakeable.swift
//  MemoryManagement
//
//  Created by Cory Sullivan on 2020-05-24.
//  Copyright © 2020 Solbits. All rights reserved.
//

import UIKit

public protocol StoryboardMakeable: class {
    associatedtype StoryboardMakeableType
    static var storyboardName: String { get }
    static func make() -> StoryboardMakeableType
}

public extension StoryboardMakeable where Self: UIViewController {
    static func make() -> StoryboardMakeableType {
        let viewControllerId = NSStringFromClass(self).components(separatedBy: ".").last ?? ""

        return make(with: viewControllerId)
    }

    static func make(with viewControllerId: String) -> StoryboardMakeableType {
        let storyboard = UIStoryboard(name: storyboardName,
                                      bundle: Bundle(for: self))

        guard let viewController = storyboard.instantiateViewController(withIdentifier: viewControllerId) as? StoryboardMakeableType else {
            fatalError("Did not find \(viewControllerId) in \(storyboardName)!")
        }

        return viewController
    }
}
