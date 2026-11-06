//
//  PostUploadSheetView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/6/26.
//

import SwiftUI

struct PostUploadSheetView: View {
    let onPostCreated: () -> Void

    @Environment(\.dismiss) private var dismiss
    @State private var isUploading = false
    @State private var title = ""
    @State private var content = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text("제목")
                    .font(.sb14)

                TextField("제목을 입력하세요.", text: $title)
                    .font(.m16)
                    .padding(.horizontal, 16)
                    .frame(height: 50)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color(.gray2), lineWidth: 2)
                    }
            }

            VStack(alignment: .leading, spacing: 8) {
                Text("본문")
                    .font(.sb14)

                TextField("본문을 입력하세요.", text: $content)
                    .font(.m16)
                    .padding(.horizontal, 16)
                    .frame(height: 50)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color(.gray2), lineWidth: 2)
                    }
            }

            Button {
                Task {
                     await uploadPost()
                 }
            } label: {
                Text("완료")
                    .font(.sb14)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.gray6)
                    .clipShape(Capsule())
                  
            }
            .padding(.top, 8)
        }
        .padding(.horizontal, 16)
        .padding(.top, 32)

    }
    private func uploadPost() async {
        guard !isUploading else { return }

        isUploading = true
        defer { isUploading = false }

        do {
            _ = try await PostUploadService.shared.postCreate(title: title, content: content)
            onPostCreated()
        } catch {
            print(error)
        }

        dismiss()
    }
}

#Preview {
    PostUploadSheetView(onPostCreated: {})
}
