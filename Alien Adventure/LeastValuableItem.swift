//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        
        // Early out if the list is empty
        if inventory.count == 0{
            return nil
        }
        
        // Now we can make some assumptions! (such as assuming inventory[0] exists)
        var lowestValueItem = inventory[0]
        for item in inventory{
            if item.baseValue < lowestValueItem.baseValue{
                lowestValueItem = item
            }
        }
        
        return lowestValueItem
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"