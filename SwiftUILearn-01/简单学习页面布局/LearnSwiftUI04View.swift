//
//  LearnSwiftUI04View.swift
//  SwiftUILearn-01
//
//  Created by iOS002 on 2019/10/15.
//  Copyright © 2019 iOS002. All rights reserved.
//

import SwiftUI

struct LearnSwiftUI04View: View {
    
    // 枚举
    enum DragState {
        case incactive
        case active(translation:CGSize)
        var tasnslation:CGSize{
            switch self {
            case .incactive:
                return .zero
            case .active(let t):
                return t
            }
        }
        
        var isActive:Bool {
            switch self {
            case .incactive:
                return false
            case .active:
                return true
            }
        }
        
        
    }
        
    @GestureState var dragState = DragState.incactive
    @State var viewState = CGSize.zero
    @State var rotationX:Double =  0
    var body: some View {
        
        let gesture = DragGesture()
            .updating($dragState) { (value, dragInfo, _) in
                dragInfo = .active(translation: value.translation)
        }
        
       return  ZStack{
            Rectangle()
                .foregroundColor(Color.white)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                ZStack{
                    Text("A")
                        .font(.system(size: 400))
                        .foregroundColor(Color.red.opacity(0.5))
                        .fixedSize() // 将此图固定为理想大小
                    .offset(
                         x: viewState.width - CGFloat(rotationX),
                         y: viewState.height
                    )
                    Text("A")
                    .font(Font.custom("Futura", size: 400))
                    .foregroundColor(Color.blue.opacity(0.5))
                    .padding(.leading)
                    .fixedSize()
                    .offset(
                        x: viewState.width + dragState.tasnslation.width + CGFloat(rotationX),
                        y: viewState.height
                            )
                    .gesture(gesture)
                    .animation(.spring())
                    
                }
                .shadow(color: Color.black.opacity(0.25), radius: 8, x: 8, y: 8)
                .rotation3DEffect(.degrees(rotationX), axis: (x: 0, y: 1, z: 0))
                Spacer()
                HStack{
                    Image(systemName: "0.circle")
                        .font(.system(size: 20))
                    Slider(value: $rotationX, in: 0.0...45,step: 1.0)
                        .accentColor(Color.black)
                    Image(systemName: "45.circle")
                        .font(.system(size: 24))
                }.padding(.all,32)
                Text("a little work with ")
                .foregroundColor(Color.black.opacity(0.5))
                .italic()
                .font(Font.system(size: 17, weight: .regular))
                .padding(.bottom,20)
                .padding(.top,16)
            }
                
            
        }
    }
}

struct LearnSwiftUI04View_Previews: PreviewProvider {
    static var previews: some View {
        LearnSwiftUI04View()
    }
}
