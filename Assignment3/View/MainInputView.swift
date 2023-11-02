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
            TextField("Enter ingredients (comma separated)", text: $ingredients)
                .padding()
                .border(Color.gray)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            Button("Search Recipes") {
                viewModel.fetchRecipes(ingredients: ingredients)
            }
            .padding()

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
        .navigationTitle("Recipe Finder")
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


//struct MainInputView: View {
//    @State var ingredients = ""
//    @ObservedObject var viewModel = RecipeViewModel()
//
//    var body: some View {
//        VStack {
//            
//            TextField("Enter ingredients (comma separated)", text: $ingredients)
//                .padding()
//                .border(Color.gray)
//                .autocapitalization(.none)
//                .disableAutocorrection(true)
//            
//            Button("Search Recipes") {
//                viewModel.fetchRecipes(ingredients: ingredients.replacingOccurrences(of: " ", with: "").lowercased())  // Remove spaces and lowercase for API consistency
//            }
//            .padding()
//
//            switch viewModel.loadingState {
//            case .loading:
//                ProgressView()
//            case .loaded:
//                List(viewModel.recipes) { recipe in
//                    NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
//                        Text(recipe.title)
//                    }
//                }
//            case .failed(let error):
//                Text("Failed to fetch recipes: \(error.localizedDescription)")
//            }
//        }
//        .navigationTitle("Recipe Finder")
//    }
//}
//
//// Preview
//struct MainInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            MainInputView()
//        }
//    }
//}

////struct MainInputView: View {
////    var body: some View {
////        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
////    }
////}
////
////#Preview {
////    MainInputView()
////}
//
//// Main Page
//struct MainInputView: View {
//    
//    @State private var ingredients = ""
//    
//    // RecipeViewModel
//    @ObservedObject var viewModel = RecipeViewModel()
//
//    var body: some View {
//        
//        VStack {
//            
//            Spacer()
//            
//            Text(" Discover delightful recipes using your available  \n ingredients. \n \n Recipe Finder offers a detailed view of each recipe, \n highlighting the number of ingredients \n you've used.")
//            
//            //Spacer()
//            
//            // Prompt user for ingredients
//            TextField("Enter ingredients (comma separated)", text: $ingredients)
//                
//                // Styling
//                .padding()
//                .border(Color.gray)
//                .autocapitalization(.none)
//                // disable autocorrecting of ingredients
//                .disableAutocorrection(true)
//
//            // Search Recipies
//            Button("Search Recipes") {
//                
//                // Fetch - spaces removed & lowercase lettering
//                viewModel.fetchRecipes(with: ingredients.replacingOccurrences(of: " ", with: "").lowercased())
//                
//            }
//            
//            // Styling
//            .padding()
//
//            
//            switch viewModel.loadingState {
//            case .loading:
//                ProgressView()
//            case .loaded:
//                List(viewModel.recipes) { recipe in
//                    NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
//                        Text(recipe.title)
//                    }
//                }
//                
//            // case handles error
//            case .failed(let error):
//                Text("Error: Failed to fetch recipes: \(error.localizedDescription)")
//            }
//        }
//        
//        // Title
//        .navigationTitle("Recipe Finder")
//        
//    }
//}
//
//// Preview
//struct MainInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            MainInputView()
//        }
//    }
//}
//
