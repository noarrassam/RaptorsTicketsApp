//
//  Ticket.swift
//  RaptorsTicketsApp
//
//  Created by Noor Rassam on 2020-10-16.
//

import Foundation

class Ticket {
    
  var type: String
  var quantity: Int
  var price: Double
    
    init(type: String, quantity: Int, price: Double){
        self.type = type
        self.quantity = quantity
        self.price = price
    }
}
