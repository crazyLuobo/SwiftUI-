//
//  NavigationPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct NavigationPageView: View {
    var body: some View {
        NavigationView{
            Text("🧚‍♂️🧚‍♀️🧜‍♂️🧜‍♀️🧞‍♂️🧞‍♀️").blur(radius: 5)
            Text("Swifter Swifter")
                .bold()
                .foregroundColor(.orange)
                .font(.largeTitle)
        }
        .navigationBarTitle(Text("NavigationView"))
        .navigationBarItems(trailing: Button(action: {
            print("Tap")
        }, label: {
            Text("Right").foregroundColor(.orange)
        }))
    }
}

struct NavigationPageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPageView()
    }
}
