//
//  ViewController.swift
//  ProofOfConcept
//
//  Created by Carlos Pava on 9/19/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import UIKit
import Logger
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mediator = LogMediator()
        mediator.add(registerLog: ConsoleOSLog())
        mediator.add(registerLog: AnalitycsLog())
        let logger = Logger(mediador: mediator)
        logger.debugLog(logCategory: .debug, data: nil, message: "this is a message")
    }
}

