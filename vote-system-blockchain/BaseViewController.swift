//
//  BaseViewController.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 11/05/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//
import UIKit

class BaseViewController: UIViewController {
    
    // MARK: Initializing
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
    
    // MARK: Layout Constraints
    private(set) var didSetupConstraints = false
    
    override func viewDidLoad() {
        self.view.setNeedsUpdateConstraints()
    }
    
    override func updateViewConstraints() {
        if !self.didSetupConstraints {
            self.setupConstraints()
            self.didSetupConstraints = true
        }
        super.updateViewConstraints()
    }
    
    func setupConstraints() {
        // Override point
    }
}
