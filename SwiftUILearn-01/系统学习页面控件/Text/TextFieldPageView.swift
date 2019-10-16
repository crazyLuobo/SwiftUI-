//
//  TextFieldPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct TextFieldPageView: View {
    
    @State var name :String = ""
    @State var password:String = ""
    var body: some View {
        VStack(spacing:15){
            HStack{
                Text("昵称").foregroundColor(.secondary)
                TextField("请输入昵称", text: $name, onEditingChanged: { (change) in
                      print("onEditing: \(change)")
                }) {
                    self.endEnding(true)
                }
            }
            .padding(10)
            .frame(height: 50)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing:20))
            
            HStack{
                Text("密码").foregroundColor(.secondary)
                SecureField("输入密码", text: $password) {
                    print("Password: \(self.password)")
                    self.endEnding(true)
                }
        
            }
            .padding(10)
            .frame(height: 50)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing:20))
        }
        .offset(y:-150)
        .navigationBarTitle(Text("TextField"))
        
        
    }
    
    func endEnding(_ force:Bool){
        MainApp.keyWindow?.endEditing(force)
    }
}

struct TextFieldPageView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPageView()
    }
}
