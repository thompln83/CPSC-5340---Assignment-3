//
//  RecipeDetailView.swift
//  Assignment3
//
//  Created by Lauren Thompson on 10/31/23.
//
// Lauren Thompson CPSC5430 October - November 2023

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack {
            
            // Title
            Text(recipe.title)
                .font(.largeTitle)
            
            Text("Missed Ingredients: \(recipe.missedIngredientCount)")
            
            Text("Used Ingredients: \(recipe.usedIngredientCount)")
            
            // * add image here *
        
            // * add recipe here*
        }
        
        .navigationTitle("Recipe Details")
        
    }
}

// preview
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe(id: 1, title: "Sample Recipe", image: "sample_image", missedIngredientCount: 0, usedIngredientCount: 5))
    }
}
