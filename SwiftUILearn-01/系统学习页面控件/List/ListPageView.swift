//
//  ListPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct ListPageView: View {
    var body: some View {
        NavigationView{
            List{
                
                Section(header: Text("section0")) {
                    ForEach(0..<6) {_ in
                        PageCellRowView(title: "你好")
                    }
                }
                Section(header: Text("section1")) {
                                   ForEach(0..<6) {_ in
                                       PageCellRowView(title: "你好")
                                   }
                               }
                Section(header: Text("section2")) {
                    ForEach(0..<6) {_ in
                        PageCellRowView(title: "你好")
                    }
                }
                
            }
            .padding(.top,-100)
        }
    .navigationBarTitle(Text("list"))
    }
}

struct ListPageView_Previews: PreviewProvider {
    static var previews: some View {
        ListPageView()
    }
}
