//
//  PostCardView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/10/26.
//

import SwiftUI

struct PostCardView: View {
    @Binding var isLiked: Bool
    let profileImage: Image
    let username: String
    let location: String
    let postImage: Image
    let likesText: String
    let caption: String
    let timeText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            PostProfileHeaderView()
            
            postImage2
            actionIcons
            postInformation
            
        }
        .background(.white)
        .foregroundStyle(.black)
        
    }
    
    private var postImage2: some View{
        Image(.postImage1)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
    }
    
    private var actionIcons: some View {
        HStack(spacing: 18) {
            Button{
                isLiked.toggle()
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

