//
//  Candidate.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 27/06/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//
import Foundation
import UIKit
import Foundation

struct Candidate {
    var name: String
    var vice: String
    var party: String
    var photo: UIImage
    
    init(name: String, vice: String, party: String, photo: String){
        self.name = name
        self.vice = vice
        self.party = party
        self.photo = UIImage(named: photo)!
    }
}
