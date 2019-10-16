//
//  TextPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

private let guithub:String = "https://github.com/Jinxiansen/SwiftUI"

struct TextPageView: View {
    var body: some View {
        VStack{
            Text("SwiftUI")
            Text("SwiftUI")
                .foregroundColor(.orange)
                .bold()
                .font(.system(size: 30))
                .fontWeight(.medium)
                .italic()
                .shadow(color: .black, radius: 1, x: 0, y: 2)
            Text(guithub)
                .underline(true,color: .red)
                .font(.system(size: 15, weight: .bold))
                .fixedSize()
                .onTapGesture {
                    print("点击了我")
            }
            
            HStack{
                Text("Text")
                Text("TextField")
                    .bold()
                    .italic()
                Text("SecureField")
                    .foregroundColor(.red)
            }
            
            Text("Views and controls are the visual building blocks of your app’s user interface." +
                           " Use them to present your app’s content onscreen.")
            .lineLimit(2)
            
        }
    }
}

struct TextPageView_Previews: PreviewProvider {
    static var previews: some View {
        TextPageView()
    }
}
