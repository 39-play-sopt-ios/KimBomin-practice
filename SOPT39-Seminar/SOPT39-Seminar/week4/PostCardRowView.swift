//
//  PostCardView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/6/26.
//

import SwiftUI

struct PostListCardView: View {
    @State private var searchText = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            HStack(spacing: 4){
                Text("이름")
                    .font(.m12)
                    .foregroundStyle(.gray3)
                
                Rectangle()
                    .fill(Color(.gray3))
                    .frame(width: 1, height: 12)
                
                Text("날짜")
                    .font(.m12)
                    .foregroundStyle(.gray3)
                
                Spacer()
            }
            
            VStack(alignment: .leading, spacing: 4){
                Text("제목입니다다다다")
                    .font(.m16)
                Text("본문이에요본문어어어어어어ㅏㄹ너ㅣ런이ㅏ런아러알알알아렁ㄹㅇㄹㅇㄹ")
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
    


#Preview {
    PostListCardView()
}
