//
//  LearnSwiftUI08View.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/15.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct LearnSwiftUI08View: View {
    @State var scaleInOut:Bool = false
    @State var rotateInOut:Bool = false
    @State var moveInOut:Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.black)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                ZStack{
                    ZStack{
                        Group{
                            // 绘制了一个渐变的圆
                            Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                        }
                        .frame(width:120,height: 120,alignment: .center)
                        .offset(y: moveInOut ? -60:0)
                        Group {
                            Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                        }
                        .frame(width: 120, height: 120, alignment: .center)
                        .offset(y: moveInOut ? 60 : 0)
                    }.opacity(0.5)
                    ZStack{
                        Group{
                            // 绘制了一个渐变的圆
                            Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                        }
                        .frame(width:120,height: 120,alignment: .center)
                        .offset(y: moveInOut ? -60:0)
                        Group {
                            Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                        }
                        .frame(width: 120, height: 120, alignment: .center)
                        .offset(y: moveInOut ? 60 : 0)
                    }.opacity(0.5).rotationEffect(.degrees(60))
                    ZStack{
                    Group{
                        // 绘制了一个渐变的圆
                        Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                    }
                    .frame(width:120,height: 120,alignment: .center)
                    .offset(y: moveInOut ? -60:0)
                    Group {
                        Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                    }
                    .frame(width: 120, height: 120, alignment: .center)
                    .offset(y: moveInOut ? 60 : 0)
                    }.opacity(0.5).rotationEffect(.degrees(120))
                    
                }
                .rotationEffect(.degrees(rotateInOut ? 90 : 0))
                .scaleEffect(scaleInOut ? 1 :1/4)
                .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8))
                .onAppear {
                    self.rotateInOut.toggle()
                    self.scaleInOut.toggle()
                    self.moveInOut.toggle()
                }
                Spacer()
                Text("a little work with 🍀")
                .foregroundColor(Color.white.opacity(0.75))
                .font(.system(size: 17, weight: .regular))
                .italic()
                .padding(.top, 16)
                .padding(.bottom, 16)
            }
        }
    }
}

struct LearnSwiftUI08View_Previews: PreviewProvider {
    static var previews: some View {
        LearnSwiftUI08View()
    }
}
