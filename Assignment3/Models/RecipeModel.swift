//
//  RecipeModel.swift : Assignment3
//
//  Created by Lauren Thompson on 10/31/23.
//
//  Lauren Thompson CPSC5430 October - November 2023


import Foundation

// Struct to hold the Recipe data
struct Recipe: Identifiable, Decodable {
    var id: Int
    var title: String
    var image: String
    var usedIngredientCount: Int
    var usedIngredients: [String]?
    var instructions: String?
}

// Struct to hold the Recipe data
//struct Recipe: Identifiable, Decodable {
//    var id: Int
//    var title: String
//    var image: String  // URL link to the recipe image
//    var usedIngredientCount: Int
//}

// Represents an Ingredient object
//struct Ingredient: Decodable {
//    let name: String
//    let amount: Double
//    let unit: String
//    // * may need additional items *
//}
//
//
//import Foundation
//
//// Codable model for Recipe
//struct Recipe: Codable, Identifiable {
//    let id: Int
//    let title: String
//    let image: String
//    let missedIngredientCount: Int
//    let usedIngredientCount: Int
//    // * may need additional items *
//}

