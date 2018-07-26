//
//  LabelStyles.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 12/05/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import UIKit
import Foundation

extension UILabel {
    static func title() -> UILabel {
        let l = UILabel()
        l.font = UIFont.title
        return l
    }
    
    static func subtitle() -> UILabel {
        let l = UILabel()
        l.font = UIFont.subtitle
        return l
    }
    
    static func textField() -> UILabel {
        let l = UILabel()
        l.font = UIFont.textField
        return l
    }
    
    static func text() -> UILabel {
        let l = UILabel()
        l.font = UIFont.text
        return l
    }
    static func nameCandidate() -> UILabel {
        let l = UILabel()
        l.font = UIFont.nameCandidate
        return l
    }
    
    static func partyCandidate() -> UILabel {
        let l = UILabel()
        l.font = UIFont.partyCandidate
        return l
    }
    
    static func viceCandidate() -> UILabel {
        let l = UILabel()
        l.font = UIFont.viceCandidate
        return l
    }

    static func importantInfo() -> UILabel {
        let l = UILabel()
        l.font = UIFont.importantInfo
        return l
    }
    
    static func onboarding() -> UILabel {
        let l = UILabel()
        l.font = UIFont.onboarding
        return l
    }
    
    
    
    
}




