//
//  Purchase.swift
//  RaptorsTicketsApp
//
//  Created by Noor Rassam on 2020-10-23.
//

import Foundation

class Purchase {
        
    var Qnty:Int
    var comp:Int
    var type:String
    var date:Date
    let formatter = DateFormatter()
    let output:String
    let dateTimeString:String
    
    init() {
        Qnty = 0
        comp = 0
        type = ""
        date = Date()
        formatter.timeStyle = .medium
        formatter.dateStyle = .long
        dateTimeString = formatter.string(from: date)
        output = ""
    }
    
    init(Qnty:Int, comp:Int,Type:String, dateTimeString:String, output:String) {
        self.Qnty = Qnty
        self.comp = comp
        self.type = Type
        self.date = Date()
        formatter.timeStyle = .medium
        formatter.dateStyle = .long
        self.dateTimeString = formatter.string(from: date)
        self.output = output
    }
}
