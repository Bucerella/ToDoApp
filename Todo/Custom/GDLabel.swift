//
//  GDLabel.swift
//  Todo
//
//  Created by Buse ERKUŞ on 8.03.2019.
//  Copyright © 2019 Buse ERKUŞ. All rights reserved.
//

import UIKit

class GDLabel: UILabel{
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String = "default text", color: UIColor = .white, size: CGFloat = 16, frame: CGRect = .zero,
         textAlign: NSTextAlignment = .left){
        super.init(frame: frame)
        if frame == .zero{
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: "Raleway-v4020-SemiBold", size: size)
        self.textAlignment = textAlign
    }
    
}
