//
//  PostListRequestDTO.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/6/26.
//

import SwiftUI

struct PostListRequestDTO: Encodable {
    let title: String
    let content: String
    let author: String
    let createdAt: String
}

