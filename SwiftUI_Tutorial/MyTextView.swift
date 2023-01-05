//
//  MyTextView.swift
//  SwiftUI_Tutorial
//
//  Created by 지원 on 1/5/23.
//

import SwiftUI

struct MyTextView: View {
    
    // @State : 값의 변화를 감지 - 뷰에 적용
    @State
    private var index : Int = 0
    
    private let backgroundColors = [
        Color.red,
        Color.orange,
        Color.yellow,
        Color.green,
        Color.blue
        
    ]
    
    var body: some View {
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) 
                
            Spacer()
        }.background(backgroundColors[index])
        .onTapGesture{
            print("배경이 클릭되었다.")
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            }else{
                self.index += 1
            }
                
        }//VStack
    }
} 

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
