//
//  explore.swift
//  myntra
//
//  Created by Mohammed Ali Imran Neranki on 22/11/22.
//

import SwiftUI

struct explore: View {
    @State var follow: Bool = false
    @State var saved: Bool = false
    @State var eadvert : [String] = ["e1","e2","e3","e4","e5"]
    @State var liked = false
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing:25){
                HStack{
                    Text("Explore").font(.system(size: 25))
                    Spacer()
                    Button {
                        saved = true
                    } label: {
                        Image(systemName: "heart").font(.system(size: 25))
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.black)
                    }
                }
                
                ScrollView(.horizontal){
                    HStack (spacing:15){
                        ForEach(eadvert,id:\.self){ i in
                            Image(i)
                                .resizable().frame(width: 150, height: 220)
                        }
                    }
                    
                }
                
                VStack{
                    HStack{
                        Image("e6").resizable().frame(width: 60, height: 60).clipShape(Circle())
                        Text("Swagata dev").font(.system(.title2, design: .rounded).weight(.semibold))
                        Spacer()
                        Button {
                            follow = true
                        } label: {
                            Text("Follow").font(.system(size:20))
                                .symbolRenderingMode(.hierarchical)
                                .foregroundColor(.black)
                        }.buttonStyle(.bordered)
                        
                        
                    }
                    VStack{
                        Image("e6").resizable().frame(height: 600)
                    }
                    HStack{
                        
                        Image(systemName: "square.and.arrow.up")
                            
                           
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        
                        Image(systemName: liked ? "heart.fill" : "heart").renderingMode(liked ? .original : .template).resizable().scaledToFit().frame(width: 30, height: 30).onTapGesture{
                            liked.toggle()
                            
                        }
                        
                        Spacer()
                
                    }
                    VStack(alignment: .leading){
                        
                        Text("The very cyber style crop tops with boat necks seem to be making come backs every now and then, isn't?")
                        Text("#womencasualwear #womentop #women #womentrousers #womenhandbag #heels").fontWeight(.bold)
                        
                    }
                }
                Spacer()
            }
            
        }.padding()
    }
    
}

struct explore_Previews: PreviewProvider {
    static var previews: some View {
        explore()
    }
}
