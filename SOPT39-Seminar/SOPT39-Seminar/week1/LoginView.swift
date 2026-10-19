//
//  LoginView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/9/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLoading: Bool = false
    //    @State private var isshowing = false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 0) {
                Image("instagram_logo")
                    .padding(.top, 126)
                
                TextField(
                    "이메일",
                    text: $email,
                    prompt: Text("이메일을 입력하세요")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.black.opacity(0.2))
                )
                .font(.system(size: 14, weight: .regular))
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .padding(.horizontal, 15)
                .frame(height: 44)
                .background(.gray)
                .clipShape(
                    RoundedRectangle(cornerRadius: 5)
                )
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray.opacity(0.1), lineWidth: 0.5)
                }
                .padding(.horizontal, 16)
                .padding(.top, 44)
                
                SecureField(
                    "비밀번호",
                    text: $password,
                    prompt: Text("비밀번호를 입력하세요")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.black.opacity(0.2))
                )
                .font(.system(size: 14, weight: .regular))
                .textContentType(.password)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .padding(.horizontal, 15)
                .frame(height: 44)
                .background(.instagramGray)
                .clipShape(
                    RoundedRectangle(cornerRadius: 5)
                )
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray.opacity(0.1), lineWidth: 0.5)
                }
                .padding(.horizontal, 16)
                .padding(.top, 12)
                
                
                NavigationLink {
                    ProfileView(name : email)
                } label: {
                    Text("로그인하기")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(height: 44)
                        .frame(maxWidth: .infinity)
                        .background(.instagramBlue)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 5)
                        )
                }
                .padding(.horizontal, 16)
                .padding(.top, 63)
                
                if isLoading {
                    ProgressView("로그인 중...")
                        .tint(.instagramBlue)
                        .padding(.top, 24)
                }
                
                
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    LoginView()
}
