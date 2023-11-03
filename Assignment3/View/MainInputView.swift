//
//  MainInputView.swift : Assignment3
//
//  Created by Lauren Thompson on 11/2/23.
//
//  Lauren Thompson CPSC5430 October - November 2023

import SwiftUI

struct MainInputView: View {
    
    @State private var ingredients = ""
    
    @ObservedObject var viewModel = RecipeViewModel()

    var body: some View {
       
        VStack {
            
            
            Text("Discover delightful recipes using your available ingredients.")
               //.fontWeight(.bold)
                .padding()
           
            // Text Field
            TextField("Enter ingredient(s), followed by a comma", text: $ingredients)
            
            // Stylized
                .padding()
                .border(Color.gray)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .fontWeight(.bold)
           
            Text("Recipe Finder offers a detailed view of each recipe, highlighting the number of ingredients you've used.")
                .padding()
            
            Image("Image")
                // Stylized
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
                .frame(width: 125, height: 125)
                
            Button("Search Recipes") {
                viewModel.fetchRecipes(ingredients: ingredients)
            }

            // Stylized
            .buttonStyle(.bordered)
           
            Text("⇣    Scroll Recipes Below    ⇣")
                .padding()
                .font(.system(size:12))
             
            
            List(viewModel.recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                    HStack {
                        Text(recipe.title)
                        Spacer()
                        Text("\(recipe.usedIngredientCount) ingredients used")
                    }
                    .padding()
                }
            }
            
        }
        .navigationTitle("Recipe Finder: 🍴")
    }
}

// Preview
struct MainInputView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MainInputView()
        }
    }
}
