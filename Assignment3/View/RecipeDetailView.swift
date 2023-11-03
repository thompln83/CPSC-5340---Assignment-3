//
//  RecipeDetailView.swift : Assignment3
//
//  Created by Lauren Thompson on 10/31/23.
//
//  Lauren Thompson CPSC5430 October - November 2023


import SwiftUI

// RecipeDetailView
struct RecipeDetailView: View {
    var recipe: Recipe

    var body: some View {
        
        VStack {
            
            // URL: data & image
            if let url = URL(string: recipe.image), let data = try? Data(contentsOf: url), let uiImage = UIImage(data: data) {
                
                // Stylized image
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
            }

            // Recipe Title
            Text(recipe.title)
                .font(.title)

            // Used ingredient count
            Text("Used ingredients count: \(recipe.usedIngredientCount)")
                .font(.title2)
        }
        .padding()
        .navigationTitle(recipe.title)
    }
}

// Preview
struct RecipeDetailView_Previews: PreviewProvider {
    
    // mockRecipe for display
    static var mockRecipe: Recipe {
        
        // Recipe, usedIngredientCount, & image
        return Recipe(id: 12345, title: "Spaghetti Carbonara", image: "https://www.jocooks.com/wp-content/uploads/2012/05/creamy-carbonara-1.jpg", usedIngredientCount: 3)
    }
    
    // Preview- NavigationView
    static var previews: some View {
        NavigationView {
            RecipeDetailView(recipe: mockRecipe)
        }
    }
}

