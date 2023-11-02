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
            // url: recipe & image
            if let url = URL(string: recipe.image), let data = try? Data(contentsOf: url), let uiImage = UIImage(data: data) {
                Image(uiImage: uiImage)
                
                // Styling
                    .resizable()
                    .scaledToFit()
            }
            
            // Styling
            Text(recipe.title)
                .font(.largeTitle)
            
            // Count of ingredients used
            Text("Used ingredients count: \(recipe.usedIngredientCount)")
            
            // Styling
                .font(.system(size: 20))
                .padding()
            
            // Title
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
}


//import SwiftUI
//
//struct RecipeDetailView: View {
//    let recipe: Recipe
//    
//    var body: some View {
//        VStack {
//            
//            // Title
//            Text(recipe.title)
//                .font(.largeTitle)
//            
//            Text("Missed Ingredients: \(recipe.missedIngredientCount)")
//            
//            Text("Used Ingredients: \(recipe.usedIngredientCount)")
//            
//            // * add image here *
//        
//            // * add recipe here*
//        }
//        
//        .navigationTitle("Recipe Details")
//        
//    }
//}
//
// preview
//struct RecipeDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeDetailView(recipe: Recipe(id: 1, title: "Sample Recipe", image: "sample_image", missedIngredientCount: 0, usedIngredientCount: 5))
//    }
//}
