//
//  RecipeViewModel.swift : Assignment3
//
//  Created by Lauren Thompson on 10/31/23.
//
// Lauren Thompson CPSC5430 October - November 2023

import Foundation

class RecipeViewModel: ObservableObject {
    @Published var recipes = [Recipe]()
    //private let apiKey = "b70353f167604d4fa7c4be3aa24d596d"
    let apiKey = "f39cf73ed0834c3f8712af0da79e2f94"
    
    func fetchRecipes(ingredients: String) {
        let query = ingredients.replacingOccurrences(of: " ", with: "+")
        
        guard let url = URL(string: "https://api.spoonacular.com/recipes/findByIngredients?ingredients=\(query)&number=10&apiKey=\(apiKey)") else {
            print("Invalid URL.")
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Network error: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                print("Data is nil.")
                return
            }

            do {
                let fetchedRecipes = try JSONDecoder().decode([Recipe].self, from: data)
                DispatchQueue.main.async {
                    self.recipes = fetchedRecipes
                }
            } catch {
                print("Decoding error: \(error.localizedDescription)")
            }
        }
        .resume()
    }
}


//import Foundation
//
//class RecipeViewModel: ObservableObject {
//    //  observe changes
//    @Published var recipes = [Recipe]()
//
//    // API Key
//    //private let apiKey = "b70353f167604d4fa7c4be3aa24d596d"
//    let apiKey = "f39cf73ed0834c3f8712af0da79e2f94"
//    
//    // fetch recipes from Spoonacular API
//    func fetchRecipes(ingredients: String) {
//
//        // replace spaces with '+' for encoding of URL
//        let query = ingredients.replacingOccurrences(of: " ", with: "+")
//
//        // create URL
//        guard let url = URL(string: "https://api.spoonacular.com/recipes/findByIngredients?ingredients=\(query)&number=10&apiKey=\(apiKey)") else {
//            return
//
//        }
//
//        // fetch data; JSON
//        URLSession.shared.dataTask(with: url) { data, _, _ in
//            guard let data = data else { return }
//            if let fetchedRecipes = try? JSONDecoder().decode([Recipe].self, from: data) {
//                DispatchQueue.main.async {
//                    self.recipes = fetchedRecipes
//                }
//            }
//        }
//        .resume()
//    }
//}

//enum LoadingState {
//    case loading, loaded, failed(Error)
//}
//
//class RecipeViewModel: ObservableObject {
//    @Published var recipes = [Recipe]()
//    @Published var loadingState: LoadingState = .loaded
//
//    func fetchRecipes(with ingredients: String) {
//        //let apiKey = "b70353f167604d4fa7c4be3aa24d596d"
//        let apiKey = "f39cf73ed0834c3f8712af0da79e2f94"
//        let baseUrl = "https://api.spoonacular.com/recipes/findByIngredients?apiKey=\(apiKey)&ingredients="
//        let fullUrl = baseUrl + ingredients
//        
//        guard let url = URL(string: fullUrl) else {
//            self.loadingState = .failed(NSError(domain: "Invalid URL", code: 100, userInfo: nil))
//            return
//        }
//
//        self.loadingState = .loading
//        
//        URLSession.shared.dataTask(with: url) { (data, _, error) in
//            if let error = error {
//                DispatchQueue.main.async {
//                    self.loadingState = .failed(error)
//                }
//                return
//            }
//            
//            guard let data = data else {
//                DispatchQueue.main.async {
//                    self.loadingState = .failed(NSError(domain: "Data is nil", code: 101, userInfo: nil))
//                }
//                return
//            }
//            
//            do {
//                let decodedData = try JSONDecoder().decode([Recipe].self, from: data)
//                DispatchQueue.main.async {
//                    self.recipes = decodedData
//                    self.loadingState = .loaded
//                }
//            } catch {
//                DispatchQueue.main.async {
//                    self.loadingState = .failed(error)
//                }
//            }
//        }.resume()
//    }
//}


  


//import Foundation
//
//enum LoadingState {
//    case loading, loaded, failed(Error)
//}
//
//class RecipeViewModel: ObservableObject {
//    @Published var recipes = [Recipe]()
//    @Published var loadingState: LoadingState = .loaded
//
//    func fetchRecipes(with ingredients: String) {
//        let apiKey = "b70353f167604d4fa7c4be3aa24d596d"
//        let baseUrl = "https://api.spoonacular.com/recipes/findByIngredients?apiKey=\(apiKey)&ingredients="
//        let fullUrl = baseUrl + ingredients
//        
//        guard let url = URL(string: fullUrl) else {
//            self.loadingState = .failed(NSError(domain: "Invalid URL", code: 100, userInfo: nil))
//            return
//        }
//
//        self.loadingState = .loading
//        
//        URLSession.shared.dataTask(with: url) { (data, _, error) in
//            if let error = error {
//                DispatchQueue.main.async {
//                    self.loadingState = .failed(error)
//                }
//                return
//            }
//            
//            guard let data = data else {
//                DispatchQueue.main.async {
//                    self.loadingState = .failed(NSError(domain: "Data is nil", code: 101, userInfo: nil))
//                }
//                return
//            }
//            
//            do {
//                let decodedData = try JSONDecoder().decode([Recipe].self, from: data)
//                DispatchQueue.main.async {
//                    self.recipes = decodedData
//                    self.loadingState = .loaded
//                }
//            } catch {
//                DispatchQueue.main.async {
//                    self.loadingState = .failed(error)
//                }
//            }
//        }.resume()
//    }
//}

//import Foundation
//import SwiftUI
//import Combine
//
//class RecipeViewModel: ObservableObject {
//    //  observe changes
//    @Published var recipes = [Recipe]()
//    
//    // API Key
//    private let apiKey = "b70353f167604d4fa7c4be3aa24d596d"
//    
//    // fetch recipes from Spoonacular API
//    func fetchRecipes(ingredients: String) {
//        
//        // replace spaces with '+' for encoding of URL
//        let query = ingredients.replacingOccurrences(of: " ", with: "+")
//        
//        // create URL
//        guard let url = URL(string: "https://api.spoonacular.com/recipes/findByIngredients?ingredients=\(query)&number=10&apiKey=\(apiKey)") else {
//            return
//            
//        }
//        
//        // fetch data; JSON
//        URLSession.shared.dataTask(with: url) { data, _, _ in
//            guard let data = data else { return }
//            if let fetchedRecipes = try? JSONDecoder().decode([Recipe].self, from: data) {
//                DispatchQueue.main.async {
//                    self.recipes = fetchedRecipes
//                }
//            }
//        }
//        .resume()
//    }
//}
