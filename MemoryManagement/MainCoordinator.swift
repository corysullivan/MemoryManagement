//
//  MainCoordinator.swift
//  MemoryManagement
//
//  Created by Cory Sullivan on 2020-05-24.
//  Copyright © 2020 Solbits. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = MainViewController.make()
        navigationController.pushViewController(vc, animated: false)
    }
}
