//
//  GroupPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct GroupPageView: View {
    var body: some View {
        VStack{
        Group {
            Text("你好Group")
            Text("你好Group")
            Text("你好Group")
        }
        .foregroundColor(.red)
        .shadow(color: .green, radius: 6, x: 13, y: 17)
        Divider()
        Group {
            Text("你好Group")
            Text("你好Group")
            Text("你好Group")
        }
        .foregroundColor(.blue)
        .shadow(color: .black, radius: 6, x: 1, y: 1)
        }
    }
}

struct GroupPageView_Previews: PreviewProvider {
    static var previews: some View {
        GroupPageView()
    }
}
