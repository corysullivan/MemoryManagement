//
//  MainViewController.swift
//  MemoryManagement
//
//  Created by Cory Sullivan on 2020-05-24.
//  Copyright © 2020 Solbits. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBAction func firstTapped(_ sender: UIButton) {
        let viewController = FirstViewController.make()
        self.present(viewController, animated: true, completion: nil)
    }
}

extension MainViewController: StoryboardMakeable {
    static let storyboardName = "Main"
    typealias StoryboardMakeableType = MainViewController
}
