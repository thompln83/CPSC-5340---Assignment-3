//
//  RecipeViewModel.swift
//  Assignment3
//
//  Created by Lauren Thompson on 10/31/23.
//
//  View Model: RecipeViewModel.swift
//
// Lauren Thompson CPSC5430 October - November 2023


import Foundation
import SwiftUI
import Combine

class RecipeViewModel: ObservableObject {
    //  observe changes
    @Published var recipes = [Recipe]()
    
    // API Key
    private let apiKey = "b70353f167604d4fa7c4be3aa24d596d"
    
    // fetch recipes from Spoonacular API
    func fetchRecipes(ingredients: String) {
        
        // replace spaces with '+' for encoding of URL
        let query = ingredients.replacingOccurrences(of: " ", with: "+")
        
        // create URL
        guard let url = URL(string: "https://api.spoonacular.com/recipes/findByIngredients?ingredients=\(query)&number=10&apiKey=\(apiKey)") else {
            return
            
        }
        
        // fetch data; JSON
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else { return }
            if let fetchedRecipes = try? JSONDecoder().decode([Recipe].self, from: data) {
                DispatchQueue.main.async {
                    self.recipes = fetchedRecipes
                }
            }
        }
        .resume()
    }
}
