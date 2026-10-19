//
//  DetailView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/10/26.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("상세화면")
            .font(.title)
            .navigationTitle("상세")
        
        NavigationLink{
            ProfileView2()
            
        } label: {
            Text("프로필 화면으로 이동")
        }
        
    }
}

#Preview {
    DetailView()
}
