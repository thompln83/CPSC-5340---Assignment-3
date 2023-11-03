//
//  RecipeModel.swift : Assignment3
//
//  Created by Lauren Thompson on 10/31/23.
//
//  Lauren Thompson CPSC5430 October - November 2023


import Foundation

// Recipe 
struct Recipe: Identifiable, Decodable {
    let id: Int
    let title: String
    let image: String
    let usedIngredientCount: Int
    
}


