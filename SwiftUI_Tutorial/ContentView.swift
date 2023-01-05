//
//  ContentView.swift
//  SwiftUI_Tutorial
//
//  Created by 지원 on 1/3/23.
//

import SwiftUI

struct ContentView: View {
    
    // @State : 값의 변화를 감지 - 뷰에 적용
    @State
    private var isActivated : Bool = false
    
    // 뷰 - 몸통
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                }//HStack
                .padding(isActivated ? 50.0 : 10.0)
                    // 조건문 사용
                .background(isActivated ? Color.yellow : Color.black).cornerRadius(10)
                    // 탭 제스처
                .onTapGesture{
                    print("HStack이 클릭되었다.")
                    withAnimation{
                        // toggle() : 알아서 true이면 false로 false이면 true로 바꿔줌
                        self.isActivated.toggle()
                    }

                }//HStack
                // 네비게이션 버튼 (링크) destination : 다음에 올 화면
                NavigationLink(destination: MyTextView()){
                    Text("네비게이션 ").fontWeight(.heavy).font(.system(size: 40))
                        .background(Color.yellow ).foregroundColor(Color.white).cornerRadius(10)
                            .padding()
                }.padding(.top,50)

            }
        }//NatigationView
        
        
            
            
            
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
