//
//  SignUpResponseDPO.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/31/26.
//

import SwiftUI

struct SignUpResponseDTO: Decodable {
    let isSuccess: Bool?
    let code: String?
    let message: String?
    let data: AuthorizationCodeData?
    
    struct AuthorizationCodeData: Decodable {
        let authorizationCode: String?
    }

}

