//
//  PageCellRowView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/15.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct PageCellRowView: View {
    private let title:String
    private let subTitle:String?
    init(title:String,subTitle:String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(title)
                .bold()
            if subTitle != nil{
                Text(subTitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
    }
}

struct PageCellRowView_Previews: PreviewProvider {
    static var previews: some View {
        PageCellRowView(title: "一条数据")
    }
}
