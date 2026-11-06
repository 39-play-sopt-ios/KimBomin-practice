//
//  PostListRequestDTO.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/6/26.
//

import SwiftUI

struct PostListResponseDTO: Decodable {
    let isSuccess: Bool
    let code: String
    let message: String
    let data: PostsData?

    struct PostsData: Decodable {
        let posts: [Post]
    }

    struct Post: Decodable, Identifiable {
        let id: Int
        let title: String
        let content: String
        let author: String
        let createdAt: String
    }
}

