
//
//  ScrollVewPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct ScrollVewPageView: View {
    var body: some View {
        ScrollView( showsIndicators: false) {
            ForEach(0..<100)
            {_ in 
                 PageCellRowView(title: "ScrollView就是长啊")
            }
        }
        .frame(width: UIScreen.main.bounds.size.width)
        .navigationBarTitle("ScrollView")
    }
}

struct ScrollVewPageView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollVewPageView()
    }
}
