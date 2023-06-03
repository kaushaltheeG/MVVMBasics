//
//  ItemModel.swift
//  MVVMBasics
//
//  Created by Kaushal Kumbagowdana on 6/2/23.
//

import Foundation
/*
    Model: where the data modeled/formatted accordently for the UI
*/

// Identidiable: a class of types whose instance hold value of an enitity with stable identity
// Codable: a type that can convert itself into and out of an external representation; alias for the Encodable and Decodable protocols
struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    // always have an example for future use in case we need to provide an example to the preview or inside our program for previewing purposes 
    static var exampleItem = Item(name: "Xbox", description: "Example Description")
    
}
