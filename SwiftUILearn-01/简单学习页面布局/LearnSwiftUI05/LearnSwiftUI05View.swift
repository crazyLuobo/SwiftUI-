//
//  LearnSwiftUI05View.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/15.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI


struct LearnSwiftUI05View: View {
    var body: some View {
        VStack{
            SceneKitView()
            Text("a little work with 🐱")
                   .font(.system(size: 17, weight: .regular))
                   .foregroundColor(Color.black.opacity(0.5))
                   .italic()
                   .padding(.top,32)
                   .padding(.bottom,32)
        }
        
     
        
    }
}

struct LearnSwiftUI05View_Previews: PreviewProvider {
    static var previews: some View {
        LearnSwiftUI05View()
    }
}
