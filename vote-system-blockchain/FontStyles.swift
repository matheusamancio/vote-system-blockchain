//
//  FontStyles.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 12/05/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import Foundation
import UIKit


extension UIFont {
    static let title: UIFont = UIFont.boldSystemFont(ofSize: 30)
    static let subtitle: UIFont = systemFont(ofSize: 20)
    static let importantInfo: UIFont = boldSystemFont(ofSize: 30)
    static let text: UIFont = systemFont(ofSize: 17, weight: .light)
    static let minitext: UIFont = systemFont(ofSize: 13, weight: .semibold)
    static let textField: UIFont = UIFont.boldSystemFont(ofSize: 30)
    static let button: UIFont = UIFont.boldSystemFont(ofSize: 15)
    static let nameCandidate: UIFont = UIFont.boldSystemFont(ofSize: 17)
    static let partyCandidate: UIFont = UIFont.boldSystemFont(ofSize: 16)
    static let viceCandidate: UIFont = UIFont.systemFont(ofSize: 15)
    static let onboarding: UIFont = UIFont.boldSystemFont(ofSize: 25)
}
