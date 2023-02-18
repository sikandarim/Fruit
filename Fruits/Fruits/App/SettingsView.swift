//
//  SettingsView.swift
//  Fruits
//
//  Created by Mariam Sikandari on 2023-02-16.
//

import SwiftUI

struct SettingsView: View {
    //MARK: -PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: -BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack (spacing: 20){
                    //MARK: -SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                           ){
                               Divider().padding(.vertical, 4)
                               HStack(alignment:.center, spacing: 10){
                                  Image("logo")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: 80, height: 80)
                                       .cornerRadius(9)
                                   Text("sdhuysgfsbiuwevfhrsvbfjkesbvh jhbesjvejhshgewsvjhbesvhhsgvbiqwhuyewifwqavewjhfewjvfejewbseuwvjehhjewvjevwvewjhcewj")
                                       .font(.footnote)
                               }
                    }
                    
                    //MARK: -SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customizataion", labelImage: "paintbrush")
                             ){
                        Text("If you wishlkjsnbvjbrsvbehjfvbhd wjhvsjhewvbweifvbwejhbvjehwjhbwqjvqwjhchjqwv")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style:.continuous))
                        )
                    }
                    
                    //MARK: -SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    )
                    {
                
                  SettingsRowView(name: "Developer", content: "John/ Jane")
                  SettingsRowView(name: "Designer", content: "Robert")
                  SettingsRowView(name: "Compatibility", content: "ios14")
                        SettingsRowView(name: "web", linkLabel: "fger", linkDestination: "www.google.com")
                        
                    }
                }
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button( action:{
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xMark")
                    }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
