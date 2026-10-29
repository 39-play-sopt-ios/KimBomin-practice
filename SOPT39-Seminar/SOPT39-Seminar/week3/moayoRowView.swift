//
//  moayoRowView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/17/26.
//

import SwiftUI

struct moayoRowView: View {
    var body: some View {
        HStack{
            Image("안녕")
            
            VStack{
                Text("이름")
                HStack {
                    Text("메세지")
                    Text("시간")
                }
            }
            
            Image(systemName: "camera")
            
        }
    }
}

#Preview {
    moayoRowView()
}
