//
//  PostDeleteModalView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/6/26.
//

import SwiftUI

struct PostDeleteModalView: View {
    let onCancel: () -> Void
    let onDelete: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            Text("게시글을 삭제할까요?")
                .font(.m18)

            HStack(spacing: 12) {
                Button {
                    onCancel()
                } label: {
                    Text("취소")
                        .font(.sb14)
                        .foregroundStyle(.gray5)
                        .frame(width: 120, height: 44)
                        .background(Color(.gray1))
                        .clipShape(Capsule())
                }

                Button {
                    onDelete()
                } label: {
                    Text("삭제")
                        .font(.sb14)
                        .foregroundStyle(.white)
                        .frame(width: 120, height: 44)
                        .background(Color.black)
                        .clipShape(Capsule())
                }
            }
        }
        .frame(width: 300, height: 130)
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(.white)
        }
    }
}
