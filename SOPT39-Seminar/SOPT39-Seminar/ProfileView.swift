//
//  ProfileView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/9/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .center){
            Image("instagram_logo")
                .padding(.top, 193)
            
            Image("profile")
                .padding(.top, 65)
            
            Text("moamoa")
                .font(.system(size: 14, weight: .semibold))
                .tracking(1.5)
                .padding(.top, 13)
            
            Button{
            } label:{
                Text("로그인하기")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth:.infinity)
                    .frame(height: 44)
                    .background(.instagramBlue)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 5)
                    )
            }
            .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
            .padding(.horizontal, 34)
            .padding(.top, 12)
            
            Button("계정 전환") {}
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(.instagramBlue)
                .padding(.top, 30)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 11) {
                Text("계정이 없으신가요?")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.black.opacity(0.4))
                
                Button{
                } label: {
                    Text("회원가입하기.")
                        .font(.system(size:12, weight: .semibold))
                        .foregroundStyle(.black)
                        .underline()
                }
                
            }
            .padding(.bottom, 18)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
}
    #Preview {
        ProfileView()
    }
