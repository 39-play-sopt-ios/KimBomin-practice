//
//  ContentView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("A")
            Text("B").foregroundStyle(.red)
        }
        .font(.title)          // 글자 스타일 → 안의 모든 자식에게 전달
        .foregroundStyle(.blue)
        .padding()             // 크기·모양 → VStack 덩어리 하나에만 적용
        .background(.yellow)
        .padding()
    }
}

#Preview {
    ContentView()
}
