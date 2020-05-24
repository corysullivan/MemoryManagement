//
//  FirstViewControlller.swift
//  MemoryManagement
//
//  Created by Cory Sullivan on 2020-05-24.
//  Copyright © 2020 Solbits. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {}

extension FirstViewController: StoryboardMakeable {
    static let storyboardName = "First"
    typealias StoryboardMakeableType = FirstViewController
}
