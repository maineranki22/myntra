//
//  MyButtonStyle.swift
//  myntra
//
//  Created by Mohammed Ali Imran Neranki on 24/11/22.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.scaleEffect( configuration.isPressed ? 1.2 : 1 )
    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Button("Hello") {
                
            }.buttonStyle(MyButtonStyle())
        }
    }
}
