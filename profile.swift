//
//  profile.swift
//  myntra
//
//  Created by Mohammed Ali Imran Neranki on 22/11/22.
//

import SwiftUI

struct profile: View {
    
    @State var orders : Bool = false
    @State var wishlist : Bool = false
    var body: some View {
      
        VStack {
            HStack{
            
                
                Text("Your Profile")
                               
                               .font(.title)
                               .fontWeight(.semibold)
                               .foregroundColor(.black)
                               .multilineTextAlignment(.center)
         
                 
            }
           
          
                .padding()
            Image("p1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(40)
                .frame(width: 200, height: 200)
                .padding(.horizontal, 40)
            Image(systemName:"plus.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .offset(x:75, y:-50)
  
            HStack{
                Text("Name:")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    Spacer()
                Text("Imran")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
            }.padding()
    
            HStack{
                Text("Surname:")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                Spacer()
                Text("Ali")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
            }.padding()
            HStack{
                Button {
                    orders = true
                } label: {
                    Text("Orders")  .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "greaterthan").font(.system(size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                }

            }.padding()
            
            HStack{
                Button {
                    wishlist = true
                } label: {
                    Text("Wishlist")  .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "heart").font(.system(size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    
                }
                

            }.padding()
            
           
      
           Spacer()
        }
        .background(Color.white.opacity(0.6))
        
     
    }
}
       

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
