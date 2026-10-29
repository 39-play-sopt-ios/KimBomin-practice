//
//  AIInstagramFeedView.swift
//  SOPT39-Seminar
//
//  AI 비교 실습용 인스타그램 피드 화면
//

import SwiftUI

struct AIInstagramFeedView: View {
    @State private var posts: [AIPost] = AIPost.samples

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                logo

                VStack(spacing: 24) {
                    ForEach($posts) { $post in
                        AIPostCardView(post: post, isLiked: $post.isLiked)
                    }
                }
            }
        }
        .background(.white)
    }

    private var logo: some View {
        Image(.instagramLogo)
            .resizable()
            .scaledToFit()
            .frame(height: 28)
            .padding(.vertical, 12)
    }
}

#Preview {
    AIInstagramFeedView()
}
