//
//  PostDeleteRequestDTO.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/7/26.
//

import SwiftUI

struct PostDeleteResponseDTO: Decodable {
    let isSuccess: Bool
    let code: String
    let message: String
}

