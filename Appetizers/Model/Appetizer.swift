//
//  Appetizer.swift
//  Appetizers
//
//  Created by Uzair Ahmed on 2024-06-06.
//

import Foundation


struct Appetizer: Identifiable, Decodable {
    
    let name: String
    let id: Int
    let imageURL: String
    let description: String
    let price: Double
    let calories: Int
    let protein: Int
    let carbs: Int

}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(name: "test", id: 0001, imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", description: "ninvsinvisnvs", price: 3.34, calories: 3, protein: 3, carbs: 3)
    
    static let sampleAppetizer1 = Appetizer(name: "test", id: 0002, imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", description: "ninvsinvisnvs", price: 3.34, calories: 3, protein: 3, carbs: 3)
    static let sampleAppetizer2 = Appetizer(name: "test", id: 0003, imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", description: "ninvsinvisnvs", price: 3.34, calories: 3, protein: 3, carbs: 3)
    static let sampleAppetizer3 = Appetizer(name: "test", id: 0004, imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", description: "ninvsinvisnvs", price: 3.34, calories: 3, protein: 3, carbs: 3)
    
    static let appetizer = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let appetizer2 = [sampleAppetizer, sampleAppetizer1, sampleAppetizer2, sampleAppetizer3]
    
}
