//
//  TabarPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct TabarPageView: View {
    @State private var index = 0 // 默认选择
    let imgs = ["hot","recommend","search","tag","setting"]
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(0..<imgs.count) { item in
                    TabItemPage(index: item)
                        .tabItem({Image(self.imgs[item])})
                        .tag(item)
                }
        }
    }
}

struct TabItemPage:View {
    var index:Int
    
    var body: some View{
        ZStack{
            Rectangle().foregroundColor(.orange)
            VStack{
                VStack {
                Text("\(index)")
                    .foregroundColor(.white)
                    .font(.system(size: 100, design: .rounded))
                    .bold()
                Image("icon")
                    .resizable()
                    .frame(width: 200,height: 200)
                }
            }
        }
    }
}

struct TabarPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabarPageView()
    }
}
