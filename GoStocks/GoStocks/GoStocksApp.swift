//
//  GoStocksApp.swift
//  GoStocks
//
//  Created by Anshu Kumar Ray on 13/12/23.
//

import SwiftUI
import SwiftData

@main
struct GoStocksApp: App {
    var body: some Scene {
        WindowGroup {
            StocksListView()
        }
        .modelContainer(for: Stocks.self)
    }
}
