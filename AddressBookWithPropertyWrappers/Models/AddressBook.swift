//
//  AddressBook.swift
//  AddressBook
//
//  Created by Ben Stone on 2/12/21.
//

import Foundation

struct AddressBook {
    private var contacts = [
        Contact(name: "Sebastian", postalCode: 12429),
        Contact(name: "Amelia", postalCode: 10012),
        Contact(name: "Soren", postalCode: 14204),
        Contact(name: "William", postalCode: 13029),
        Contact(name: "Evangeline", postalCode: 13029)
    ]
    
    mutating func toggleFavorite(atIndex index: Int) {
        contacts[index].isFavorite.toggle()
    }
    
    func contact(atIndex index: Int) -> Contact {
        contacts[index]
    }
        
    func contactIsFavorite(atIndex index: Int) -> Bool {
        contacts[index].isFavorite
    }
    
    var numberOfFavorites: Int {
        var count = 0
        
        for contact in contacts {
            if contact.isFavorite {
                count += 1
            }
        }
        return count
    }
    
    var numberOfContacts: Int {
        contacts.count
    }
}
