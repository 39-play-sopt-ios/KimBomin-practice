//
//  GirdView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/17/26.
//

import SwiftUI

struct GridView: View {
    @State private var searchText = ""
    
    private let columnCount = 3
    private let rowCount = 6
    
    
    var body: some View {
        
        VStack(spacing: 23) {
            
            searchBar
        
            
            ScrollView{
                Grid(horizontalSpacing: 1, verticalSpacing: 1) {
                    ForEach(0..<6, id: \.self) { row in
                        GridRow{
                            ForEach(0..<3, id: \.self) { column in
                                let index = row * 3 + column
                                
                                Color.clear
                                    .aspectRatio(1, contentMode: .fit)
                                    .overlay {
                                        Image("Rectangle\(index)")
                                            .resizable()
                                            .scaledToFill()
                                    }
                                    .clipped()
                            }
                        }
                    }
                }
                
            }
            
            
        }
    }
    
    private var searchBar : some View{
        HStack(spacing: 11){
                   TextField("검색", text: $searchText)
                       .padding(.horizontal, 12)
                       .frame(height: 36)
                       .backgroundStyle(.gray)
                       .background(Color(.systemGray5))
                       .clipShape(RoundedRectangle(cornerRadius: 10))
                       
                      
                   
                   Image(systemName: "bookmark")
                   
               }
               .padding(.horizontal,10)
        
    }
}

