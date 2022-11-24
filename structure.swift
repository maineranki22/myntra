//
//  structure.swift
//  myntra
//
//  Created by Mohammed Ali Imran Neranki on 23/11/22.
//

import Foundation
import SwiftUI

let categories: [String] = ["Brands","Men","Women","Kids","Accessories","Beauty","Teens","Home & Living","Myntra Mall","Myntra Luxe","Pet Essentials","Theme stores"]
var itemList : [Item] = [Item(name:"forever21",imageName:"b5",categories:["Brands"]),Item(name:"biba",imageName:"b8",categories:["Brands"]),
                         Item(name:"h&m",imageName:"b7",categories:["Brands"]),Item(name:"lorealparis",imageName:"b10",categories:["Brands","Beauty"]),
                         Item(name:"kurta",imageName:"w1",categories:["Women"]),Item(name:"dress",imageName:"w2",categories:["Women"]),
                         Item(name:"lehenga",imageName:"w4",categories:["Women"]),Item(name:"jacket",imageName:"m4",categories:["Men"]),
                         Item(name:"tshirt",imageName:"m3",categories:["Men"]),Item(name:"shirt",imageName:"m1",categories:["Men"]),
                         Item(name:"shorts",imageName:"m1",categories:["Men"]),Item(name:"m2",imageName:"",categories:[]),
                         Item(name:"top",imageName:"w3",categories:["Women"]),Item(name:"",imageName:"",categories:[]),
                         Item(name:"",imageName:"1",categories:[]),Item(name:"",imageName:"",categories:[]),]

struct Item : Identifiable{
    init(name:String,imageName:String,categories:[String]){
        self.id = UUID()
        self.name = name
        self.image = Image(imageName)
        self.categories = categories
    }
    var id = UUID()
    var name : String
    var image : Image
    var categories : [String]
}


