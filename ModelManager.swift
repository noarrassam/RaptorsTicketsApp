//
//  Model.swift
//  RaptorsTicketsApp
//
//  Created by Noor Rassam on 2020-10-16.
//

import Foundation

class ModelManager {
    
    var allTickets = [Ticket]()
    
    var compon:Int
    
    var result:Int?
    
    var tickets:Int
    
    var ticket1 = Ticket(type: "Balcony", quantity: 12, price: 100000)
    var ticket2 = Ticket(type: "Lower Level", quantity: 20, price: 700)
    var ticket3 = Ticket(type: "CourtSide", quantity: 15, price: 1500)
    
    init() {
        allTickets = [ticket1,ticket2,ticket3]
        compon = 0
        tickets = 0
    }
    
    init(compon:Int, tickets:Int) {
        allTickets = [ticket1,ticket2,ticket3]
        self.compon = compon
        self.tickets = tickets
    }
    
    func Cal(num:Double, compon:Int) -> Double {
        
        switch compon{
        case 0:
        let x = num * ticket1.price
            return x
        case 1:
        let x = num * ticket2.price
            return x
        case 2:
        let x = num * ticket3.price
            return x
        default:
            return 0
        }
    }
    
    func buy(num:Int, com:Int) -> Int {
        if (num <= allTickets[com].quantity)
        {
            result = allTickets[com].quantity - num
        } else {
            return 0
        }
        return result!
    }
    
    func AddTickets(num:Int, com:Int) -> Int {
        result = allTickets[com].quantity + num
        return result!
    }
}
