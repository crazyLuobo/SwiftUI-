//
//  LearnSwiftUI02View.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/14.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

extension UIViewController{
    var isDarkModeEnabled:Bool{
        get{
            return traitCollection.userInterfaceStyle == .dark
        }
    }
    
}
struct LearnSwiftUI02View: View {
    var body: some View {
        ZStack{
            Color(UIColor(named: "accentColor") ?? UIColor.gray)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 80){
                    VStack(alignment: .leading){
                        Text("Now,is")
                        .font(.system(size: 32, weight: .black))
                        .foregroundColor(Color(UIColor(named: "labelColor")!))
                        .multilineTextAlignment(.leading)
                        Text("Light")
                        .font(Font.custom("Condiment-Regular", size: 98))
                        .foregroundColor(Color(UIColor(named: "labelColor")!).opacity(0.75))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 80)
                        .frame(width: 250)
                    }
                    .padding(.trailing,80)
                }
                Spacer()
                Text("a little work with 🔛")
            }
        }
    }
}


struct LearnSwiftUI02View_Previews: PreviewProvider {
    static var previews: some View {
        LearnSwiftUI02View()
    }
}
