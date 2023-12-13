//
//  Stocks.swift
//  GoStocks
//
//  Created by Anshu Kumar Ray on 13/12/23.
//

import Foundation
import SwiftData

@Model
class Stocks {
    let id: String
    let symbol: String
    let open: String
    let high: String
    let low: String
    let price: String
    let change: String
    let percentChange: String
    
    init(id: String, symbol: String, open: String, high: String, low: String, price: String, change: String, percentChange: String) {
        self.id = id
        self.symbol = symbol
        self.open = open
        self.high = high
        self.low = low
        self.price = price
        self.change = change
        self.percentChange = percentChange
    }
}
