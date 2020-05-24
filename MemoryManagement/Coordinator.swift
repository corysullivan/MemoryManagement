//
//  Coordinator.swift
//  MemoryManagement
//
//  Created by Cory Sullivan on 2020-05-24.
//  Copyright © 2020 Solbits. All rights reserved.
//

import UIKit

protocol Coordinator {
    // var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
