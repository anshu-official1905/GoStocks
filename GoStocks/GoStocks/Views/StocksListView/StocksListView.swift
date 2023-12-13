//
//  ContentView.swift
//  GoStocks
//
//  Created by Anshu Kumar Ray on 13/12/23.
//

import SwiftUI
import SwiftData

struct StocksListView: View {
    @Query private var stockItems: [Stocks]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        VStack {
            Text("Tap on this button to add data!!")
            Button("Add an item") {
                addItem()
            }
            
            List {
                ForEach (stockItems) { item in
                    HStack {
                        Text(item.symbol)
                        Spacer()
                    }
                }
                .onDelete { indexes in
                    for index in indexes {
                        deleteItem(stockItems[index])
                    }
                }
            }
        }
        .padding()
    }
    
    func deleteItem(_ item: Stocks) {
        context.delete(item)
    }
    
    func addItem() {
        // TODO: - Need to get this updated with actual values
        let item = Stocks(id: UUID().uuidString, symbol: "AAPL", open: "135.90", high: "136.39", low: "133.77", price: "135.13", change: "-0.26", percentChange: "-0.19%")
        context.insert(item)
    }
}

#Preview {
    StocksListView()
}
