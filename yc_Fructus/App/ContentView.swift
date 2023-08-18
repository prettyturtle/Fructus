//
//  ContentView.swift
//  yc_Fructus
//
//  Created by yc on 2023/08/17.
//

import SwiftUI

struct ContentView: View {
//    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            } //: LIST
            .listStyle(.plain)
            
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
