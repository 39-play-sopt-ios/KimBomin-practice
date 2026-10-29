//
//  PostCardView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/10/26.
//

import SwiftUI

struct PostCardView: View {
    var isLiked: Bool
    let profileImage: Image
    let username: String
    let location: String
    let postImage: Image
    let likesText: String
    let caption: String
    let timeText: String
    
    let onLinkButtonTapped: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            postProfileHeader
            
            postImage2
            actionIcons
            postInformation
            
        }
        .background(.white)
        .foregroundStyle(.black)
        
    }
    
    private var postProfileHeader: some View{
        HStack(spacing: 10) {
            Image(.instagramProfile)
                .resizable()
                .scaledToFill()
                .frame(width: 36, height: 36)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 2) {
                Text("\(username)")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("\(location)")
                    .font(.system(size: 12))
            }
            
            Spacer()
            
            Image(.more)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 12)
        
    }
    
    private var postImage2: some View{
        postImage
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
    
    private var actionIcons: some View {
        HStack(spacing: 18) {
            Button{
                onLinkButtonTapped()
            }label: {
                Image(isLiked ? "heart_fill" : "heart")
            }
            Image(.comment)
            Image(.messanger)
            
            Spacer()
            
            Image(.save)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }
    
    private var postInformation: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("\(likesText)")
            Text("\(Text("\(username)").bold()) \(caption)")
                .fixedSize(horizontal: false, vertical: true)
            Text("\(timeText)")
                .font(.system(size: 12))
                .foregroundStyle(.secondary)
        }
        .font(.system(size: 14))
        .padding(.horizontal, 16)
        .padding(.bottom, 12)
        
    }
    
}

