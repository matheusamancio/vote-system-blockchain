//
//  User.swift
//  vote-system-blockchain
//
//  Created by Matheus Amancio Seixeiro on 27/06/2018.
//  Copyright © 2018 Matheus Amancio Seixeiro. All rights reserved.
//

import Foundation

struct User{
    var cpf: Int
    var password: Int
    
    init(cpf: Int, password: Int){
        self.cpf = cpf
        self.password = password
    }
    
}
