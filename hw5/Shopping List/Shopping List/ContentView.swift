//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    class Items: Identifiable {
        let imageName: String
        let itemName: String
        let quantity: Int
        
        init(imageName: String, itemName: String, quantity: Int) {
            self.imageName = imageName
            self.itemName = itemName
            self.quantity = quantity
        }
    }

    
    var listFruit = [
        Items(imageName: "banana", itemName: "Bananas", quantity:3),
        Items(imageName: "apple", itemName: "Apples", quantity:4),
        Items(imageName: "eggs", itemName: "Eggs", quantity:12)
    ]
    
    var listCarbs = [
        Items(imageName: "bread", itemName: "Bread", quantity:3),
        Items(imageName: "rice", itemName: "Rice", quantity:4),
    ]
    var listSweets = [
        Items(imageName: "muffin", itemName: "Muffin", quantity:3),
        Items(imageName: "cake", itemName: "Cake", quantity:4),
    ]
    
    
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Fruits")) {
                    ForEach(listFruit) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }
            List{
                Section(header: Text("Sweets")) {
                    ForEach(listSweets) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)
                    }
                }
            }
            
            
            
        }.navigationTitle("Shopping List")
    }
}
