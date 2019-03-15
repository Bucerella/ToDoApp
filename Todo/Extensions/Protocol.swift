//
//  Protocol.swift
//  Todo
//
//  Created by Buse ERKUŞ on 10.03.2019.
//  Copyright © 2019 Buse ERKUŞ. All rights reserved.
//

import Foundation

protocol GDHeaderDelegate {
    func openAddItemPopup()
}

protocol GDNewItemDelegate {
    func addItemToList(text:String)
}

protocol GDListCellDelegate {
    func toggleToDo()
}
