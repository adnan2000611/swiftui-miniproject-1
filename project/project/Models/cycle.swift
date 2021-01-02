//
//  cycle.swift
//  project
//
//  Created by Mac on 1/3/21.
//

import Foundation
struct cycle : Identifiable{
    let image: String
    let price : Int
    
    var id = UUID()
}

let cycles = [

    cycle(image: "cycle1", price: 4),
    cycle(image: "cycle2", price: 5),
    cycle(image: "cycle3", price: 7),
    cycle(image: "cycle4", price: 9),
    cycle(image: "cycle5", price: 27),
    cycle(image: "cycle6", price: 34),
    cycle(image: "cycle7", price: 17),
    cycle(image: "cycle8", price: 22),
]
