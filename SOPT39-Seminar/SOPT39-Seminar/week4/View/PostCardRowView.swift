//
//  PostCardView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/6/26.
//

import SwiftUI

struct PostCardRowView: View {
    let title: String
    let content: String
    let author: String
    let createdAt: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack(spacing: 4){
                Text(author)
                    .font(.m12)
                    .foregroundStyle(.gray3)
                
                Rectangle()
                    .fill(Color(.gray3))
                    .frame(width: 1, height: 12)
                
                Text(createdAt)
                    .font(.m12)
                    .foregroundStyle(.gray3)
                
                Spacer()
            }
            
            VStack(alignment: .leading, spacing: 4){
                Text(title)
                    .font(.m16)
                Text(content)
                    .font(.m14)
            }
            .foregroundStyle(.gray5)
        }
        .padding(20)
        .background{
            RoundedRectangle(cornerRadius: 12)
                .fill(.gray1)
            
        }
        .padding(.horizontal, 16)
    }
}

