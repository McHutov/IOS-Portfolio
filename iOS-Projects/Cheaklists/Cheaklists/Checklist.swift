//
//  Checklist.swift
//  Cheaklists
//
//  Created by Дастан Махутов on 12.06.2021.
//

import UIKit

class Checklist: NSObject, Codable {
    var name = ""
    var iconName = ""
    var items : [CheckListItem] = []
    
    init(name: String, iconName: String = "No Icon") {
        self.name = name
        self.iconName = iconName
        super.init()
    }
    
    func countUncheckedItems() -> Int {
        var count = 0
        
        for item in items where !item.checked {
            count += 1
        }
        
        return count
    }
}
