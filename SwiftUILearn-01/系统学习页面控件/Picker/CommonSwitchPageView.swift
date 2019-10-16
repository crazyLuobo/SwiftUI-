//
//  CommonSwitchPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct CommonSwitchPageView: View {
    @State var isOn = false
    @State var rating = 0.5
    @State var value = 0
    var body: some View {
        VStack{
            HStack{
                Toggle(isOn: $isOn) {
                    Text("State: \(self.isOn == true ? "开":"关")")
                }.padding(20)
            }
            
            VStack{
                Text("Slider Value: \(self.rating)")
                Slider(value: $rating)
                    .padding(30)
            }
            
            HStack{
                Stepper(value: $value, step: 2, onEditingChanged: { c in
                    print(c)
                }) {
                    Text("Stepper Value: \(self.value)")
                }.padding(50)
            }
        }
    .navigationBarTitle(Text("各种开关按钮"))
    }
}

struct CommonSwitchPageView_Previews: PreviewProvider {
    static var previews: some View {
        CommonSwitchPageView()
    }
}
