//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Mariam Sikandari on 2023-02-15.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    // MARK: - BODY
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical,showsIndicators: true){
                VStack(alignment: .center, spacing: 20) {
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //Nutrients
                        FruitNutritentsView(fruit: fruit)
                        //Subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//: VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }//:Vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//:Scroll
            .edgesIgnoringSafeArea(.top)
        }//:Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}
// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
