//
//  PostSignUpView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/31/26.
//

import SwiftUI

struct PostSignUpView: View {
    @State private var part = ""
    @State private var name = ""
    @State private var isLoading = false
    @State private var errorMessage = ""
    @State private var isShowingPostList = false

    private var trimmedName: String {
        name.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    private var canSubmit: Bool {
        !part.isEmpty && !trimmedName.isEmpty && !isLoading
    }

    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 25){
                Spacer()

                Group{
                    TextField("web / ios / android", text: $part)
                    TextField("이름을 입력해주세요", text: $name)
                }
                .font(.custom("Pretendard-Medium", size: 18))
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .padding(.horizontal, 16)
                .frame(height: 50)
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(Color(.gray2), lineWidth: 2)
                }
                Button{
                    Task {
                        await signupButtonDidTap()
                    }
                } label: {
                    Text(isLoading ? "발급 중..." : "코드발급")
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(canSubmit ? Color.black : Color(.gray3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .disabled(!canSubmit)

                Spacer()

                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundStyle(.red)
                        .padding(.bottom, 24)
                }
            }
            .padding(.horizontal,20)
            .padding(.top, 88)
            .background(.white)
            .navigationDestination(isPresented: $isShowingPostList) {
                PostListView()
                    .navigationBarBackButtonHidden()
            }
        }
    }

    private func signupButtonDidTap() async {
        guard !isLoading else { return }

        isLoading = true
        errorMessage = ""
        defer { isLoading = false }
        
        do {
            let reponse = try await SignupService.shared.postSignup(part: part)
            try Task.checkCancellation()
            
            guard let code = reponse.data?.authorizationCode else {
                throw NetworkError.responseError
            }
            UserDefaults.standard.set(code, forKey: "authorizationCode")
            UserDefaults.standard.set(trimmedName, forKey: "authorName")
            isShowingPostList = true
        } catch is CancellationError{
            
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}

#Preview {
    PostSignUpView()
}
