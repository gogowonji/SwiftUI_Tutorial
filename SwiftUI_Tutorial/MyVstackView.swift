//
//  MyVstackView.swift
//  SwiftUI_Tutorial
//
//  Created by 지원 on 1/3/23.
//

import SwiftUI //foundation에서 변경

struct MyVstackView: View {
    
    var body: some View{
        VStack{
            Text("1").font(.system(size:50)).padding()
            Text("2").font(.system(size:50))
                .padding()
            Text("3").font(.system(size:50))
                .padding()
        }.background(Color.red)
    }
}

