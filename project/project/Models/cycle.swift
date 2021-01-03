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
    let number : Int
    var id = UUID()
}

let cycles = [

    cycle(image: "cycle1", price: 4, number: 1),
    cycle(image: "cycle2", price: 5, number: 2),
    cycle(image: "cycle3", price: 7, number: 3),
    cycle(image: "cycle4", price: 9, number: 4),
    cycle(image: "cycle5", price: 27, number: 5),
    cycle(image: "cycle6", price: 34, number: 6),
    cycle(image: "cycle7", price: 17, number: 7),
    cycle(image: "cycle8", price: 22, number: 8),
]
