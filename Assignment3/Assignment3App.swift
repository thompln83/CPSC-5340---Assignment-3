//
// Assignment3App.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.
//
// Lauren Thompson CPSC5430 October - November 2023

import SwiftUI

@main
struct Assignment3App: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainInputView()
            }
        }
    }
}

//import SwiftUI
//
//@main
//struct Assignment3App: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}


// Assignment3App Directory: 

// Assignment3App/
// |-- Assignment3App.swift
// |
// |-View
// |-- ContentView.swift        // Default - Removing* ?
// |-- RecipeDetailView.swift   // view for showing recipe details
// |-- MainInputView.swift      // Main view for input and listing recipes
// |
// |- ViewModel
// |-- RecipeViewModel.swift
// |
// |-Models
// |-- RecipeViewModel.swift    // Recipe view model for data fetching and
// |
