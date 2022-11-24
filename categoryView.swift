//
//  cater.swift
//  myntra
//
//  Created by Mohammed Ali Imran Neranki on 23/11/22.
//

import SwiftUI

struct categoryView: View {
    @Binding var category : String
    var body: some View {
        VStack{
            Text(category)
                .font(.title)
            ForEach(itemList.filter {$0.categories.contains(category)} ){item in
                item.image.resizable().frame(width:100,height: 100)
                
            }
            
        }
    }
}
struct categoryView_Previews: PreviewProvider {

    static var previews: some View {
        categoryView(category: .constant("Brands"))
    }
}

