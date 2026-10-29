//
//  AIPostCardView.swift
//  SOPT39-Seminar
//
//  AI 비교 실습용 게시물 카드
//

import SwiftUI

struct AIPostCardView: View {
    let post: AIPost
    @Binding var isLiked: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            profileHeader
            postImage
            actionIcons
            postInformation
        }
        .foregroundStyle(.black)
    }

    private var profileHeader: some View {
        HStack(spacing: 10) {
            Image(.instagramProfile)
                .resizable()
                .scaledToFill()
                .frame(width: 32, height: 32)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 2) {
                Text(post.username)
                    .font(.system(size: 13, weight: .semibold))
                Text(post.location)
                    .font(.system(size: 11))
            }

            Spacer()

            Image(.more)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
    }

    private var postImage: some View {
        Image(post.imageName)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .overlay(alignment: .topTrailing) {
                pageBadge
            }
    }

    private var pageBadge: some View {
        Text("\(post.currentPage)/\(post.totalPages)")
            .font(.system(size: 12))
            .foregroundStyle(.white)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(.black.opacity(0.7))
            .clipShape(Capsule())
            .padding(12)
    }

    private var actionIcons: some View {
        HStack(spacing: 16) {
            Button {
                isLiked.toggle()
            } label: {
                Image(isLiked ? .heartFill : .heart)
            }

            Image(.comment)
            Image(.messanger)

            Spacer()

            Image(.save)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
    }

    private var postInformation: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(spacing: 6) {
                Image(.instagramProfile)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 16, height: 16)
                    .clipShape(Circle())
                Text(post.likesText)
            }
            .font(.system(size: 12))

            Text("\(Text(post.username).bold())  \(post.caption)")
                .font(.system(size: 13))

            Text(post.timeText)
                .font(.system(size: 10))
                .foregroundStyle(Color(.instagramGray))
        }
        .padding(.horizontal, 12)
        .padding(.bottom, 12)
    }
}

#Preview {
    AIPostCardView(post: AIPost.samples[0], isLiked: .constant(false))
}
