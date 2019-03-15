//
//  OptionSet.swift
//  Todo
//
//  Created by Buse ERKUŞ on 10.03.2019.
//  Copyright © 2019 Buse ERKUŞ. All rights reserved.
//

import Foundation

struct ButtonOptions: OptionSet {
    let rawValue: Int
    
    static let roundedText = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon = ButtonOptions(rawValue: 1 << 1)
}

