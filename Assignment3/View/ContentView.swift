//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.
//
// Lauren Thompson CPSC5430 October - November 2023

//import SwiftUI
//
//struct ContentView: View {
//    
//    @State private var ingredients = ""
//    
//    @ObservedObject var recipeViewModel = RecipeViewModel()
//    
//    var body: some View {
//        
//        NavigationView {
//            
//            VStack {
//                
//                
//                Text("Make something to EAT\n with what's in your kithen!\n \n Enter 3 or more ingredients.\n Separate each ingredient with a comma.")
//                
//                    .padding()
//                
//                // styling
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                
//                // prompt user for ingredients
//                    TextField("Enter ingredients", text: $ingredients)
//                
//                // Search Button
//                Button("Find Recipes") {
//                    
//                    // fetch
//                    recipeViewModel.fetchRecipes(ingredients: ingredients)
//                }
//                .padding()
//                
//                // List of Recipes
//                List(recipeViewModel.recipes) { recipe in
//                    NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
//                        Text(recipe.title)
//                    }
//                }
//            }
//            .navigationBarTitle("Recipe Finder: ")
//            
//        }
//    }
//    
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
