//
//  CustomTitleVIew.swift
//  Assignment3
//
//  Created by Lauren Thompson on 10/31/23.
//
//  Lauren Thompson CPSC5430 October - November 2023

//import Foundation
import SwiftUI

struct CustomTitleView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recipe Finder:")
                .font(.headline)
            Text("Make something to eat")
                .font(.subheadline)
            Text("with what's in your kitchen")
                .font(.subheadline)
        }
    }
}
