//
//  ContentView.swift
//  Fruits
//
//  Created by Mariam Sikandari on 2023-02-14.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSetting: Bool = false
    // MARK: - BODY
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button( action:{
                        isShowingSetting = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSetting){
                        SettingsView()
                    }
            )
          
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
