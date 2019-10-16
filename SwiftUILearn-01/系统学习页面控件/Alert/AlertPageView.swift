//
//  AlertPageView.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/16.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct AlertPageView: View {
      @State var showAlert = false
        
        var body: some View {
            Button(action: {
                self.showAlert = true
                print("Tap")
            }) {
                Text("Click")
                    .font(.system(size: 40,
                                  design: .rounded))
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("确定要支付这100000000美元吗？"),
                      message: Text("请谨慎操作\n一旦确认，钱款将立即转入对方账户"),
                      primaryButton: .destructive(Text("确认")) { print("转出中...") },
                      secondaryButton: .cancel())
            }).navigationBarTitle(Text("Alert"))
            
        }
}

struct AlertPageView_Previews: PreviewProvider {
    static var previews: some View {
        AlertPageView()
    }
}
