//
//  MessageRowView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/17/26.
//

import SwiftUI

struct MessageRowView: View {
    let item: DMModel
    
    var body: some View {
        HStack(spacing: 20){
            Image(item.profileImage)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading){
                Text(item.name)
                            
                HStack{
                    Text(item.message)
                        
                    
                    Spacer()
                    
                    Text(item.time)
                }
                .foregroundStyle(.instagramGray)
            }
            
            Image(systemName: "camera")
                .font(.system(size: 22))
                .foregroundStyle(.instagramGray)
                
            
        }
        
    }
    
}
