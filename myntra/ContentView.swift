//
//  ContentView.swift
//  myntra
//
//  Created by Mohammed Ali Imran Neranki on 21/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var searchText : String = ""
    @State var wishlist: Bool = false
    @State var cart: Bool = false
    @State var advert : [String] = ["1","2","3","4","5","6","7"]
    @State var adverttwo: [String] = ["8","9","10","11","12","13","14","15","16","17"]
    @Namespace var animation
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                if(!searchText.isEmpty){
                    ForEach(searchResults){item in
                        Text(item.name)
                    }
                } else {
                    VStack {
                        HStack{
                            Text("Welcome")
                                .font(.system(size: 25))
                            Spacer()
                            Button {
                                wishlist = true
                            } label: {
                                Image(systemName: "heart").font(.system(size: 25))
                                    .symbolRenderingMode(.hierarchical)
                                    .foregroundColor(.black)
                            }
                            Button {
                                cart = true
                            } label: {
                                Image(systemName: "bag").font(.system(size: 25))
                                    .symbolRenderingMode(.hierarchical)
                                .foregroundColor(.black)                }
                        }.padding(.bottom)
                        
                        ScrollView(.horizontal){
                            HStack (spacing:15){
                                ForEach(advert,id:\.self){ i in
                                    Image(i)
                                        .resizable().frame(width: 200, height: 200)
                                }
                            }
                            
                        }.padding(.bottom)
                        ScrollView(.horizontal){
                            HStack (spacing:15){
                                ForEach(adverttwo,id:\.self){ i in
                                    Image(i)
                                        .resizable().frame(width: 150, height: 200)
                                }
                            }
                        }.padding(.bottom)
                        
                        VStack{
                            ForEach(categories, id: \.self) { category in
                                NavigationLink {
                                    categoryView(category: .constant(category))
                                } label: {
                                    HStack {
                                        Text(category).font(.system(.largeTitle, design: .rounded).weight(.semibold))
                                        Image(systemName: "chevron.right")
                                            .fontWeight(.semibold)
                                            .foregroundColor(.secondary.opacity(0.5))
                                    }
                                }.buttonStyle(MyButtonStyle())
                                
                                
                            }.foregroundColor(.black).padding(.bottom)
                            
                        }
                        
                        
                        Spacer()
                    }
                    .padding()
                }
                
            }.toolbar(.visible, for: .navigationBar).searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always),prompt: "Search your items")
        }.toolbar(.visible, for: .navigationBar)
        
    }
    var searchResults : [Item] {
        if (searchText.isEmpty){
            return []
        } else {
            return itemList.filter {$0.name.localizedCaseInsensitiveContains( searchText)}
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
