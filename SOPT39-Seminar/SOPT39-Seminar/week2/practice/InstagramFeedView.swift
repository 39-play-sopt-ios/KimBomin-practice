//
//  InstagramFeedView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/10/26.
//

import SwiftUI

struct InstagramFeedView: View {
    @State private var viewModel = InstagramFeedViewModel()
    
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 0) {
                Image(.instagramLogo)
                    .padding(.bottom,30)
                
                ForEach(viewModel.examplePosts){ post in
                    PostCardView(
                        isLiked: post.isLiked,
                        profileImage: Image(.instagramProfile),
                        username: post.username,
                        location: post.location,
                        postImage: Image(post.postImageName),
                        likesText: post.likesText,
                        caption: post.caption,
                        timeText: post.timeText,
                        onLinkButtonTapped: {
                            viewModel.toggleLike(id: post.id)
                        }
                       
                    )
                }
                
                Spacer()
            }
        }
    }
}
    
    #Preview {
        InstagramFeedView()
    }


