//
//  LearnSwiftUI06View.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/15.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct LearnSwiftUI06View: View {
    
    @State var isEditing:Bool = false
    @State var something:String = ""
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(UIColor.init(red: 0.91, green: 0.92, blue: 0.94, alpha: 1)))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Group{// 这里的group本来是不准备用的，但是蓝色的背景view如果不进行集体处理的话，就会贴边
                TextField("SayingSomething",text: $something){
                    
                }
                .font(.system(size: 32, weight: .black))
                .foregroundColor(Color.black)
                .accentColor(Color.blue)
                .padding(.vertical, 32)
                .padding(.horizontal, 32)
            .background(isEditing ? Color.blue.frame(width: nil, height: nil).offset(x: 0)
            :
            Color.white.frame(width: 0, height: 0).offset(x: 64.0 - (UIScreen.main.bounds.size.width / 2.0))
                )
                .cornerRadius(16)
                .animation(.spring(response: 1.0))
                }
                .padding(.horizontal,32)
                .onTapGesture {
                    self.isEditing.toggle()// 快速切换bool值
                }
                Spacer()
                Text("a little work with 🗣")
                    .foregroundColor(Color.black.opacity(0.5))
                    .font(.system(size: 20, weight: .bold))
                    .padding(.top,32)
                    .padding(.bottom,32)
            }
        }
    }
}

struct LearnSwiftUI06View_Previews: PreviewProvider {
    static var previews: some View {
        LearnSwiftUI06View()
    }
}
