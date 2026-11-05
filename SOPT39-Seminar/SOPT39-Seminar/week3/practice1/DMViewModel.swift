//
//  DMViewModel.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/30/26.
//

import Foundation
import Observation

@Observable
final class DMViewModel{
    private(set) var message: [DMModel] = [
            DMModel(
                name: "juju",
                message: "안녕하세요 주주예용",
                time: "지금",
                profileImage: "profile"
            ),
            DMModel(
                name: "huihui",
                message: "반가워용 희희예용",
                time: "지금",
                profileImage: "profile"
            ),
            
            DMModel(
                name: "yupyup",
                message: "3차 세미나 렛쮸고",
                time: "15m",
                profileImage: "profile"
            ),
            
            DMModel(
                name: "tacos",
                message: "아~~ 재밌다 😂😂😂",
                time: "20m",
                profileImage: "profile"
            ),
            
            DMModel(
                name: "kk_kk",
                message: "나의 노래를 들어보실분 나는 케케",
                time: "1m",
                profileImage: "profile"
            ),
            
            DMModel(
                name: "hello_moa",
                message: "모아요에 오신 걸 환영",
                time: "2h",
                profileImage: "profile"
            ),
            
            DMModel(
                name: "goTosleep",
                message: "쿨쿨",
                time: "4h",
                profileImage: "profile"
            ),
            
            DMModel(
                name: "hungryMan",
                message: "저랑 떵개하실래요?",
                time: "5h",
                profileImage: "profile"
            ),
            
            DMModel(
                name: "moamoayo",
                message: "모아요에서 사과 한 입! 앙~",
                time: "10h",
                profileImage: "profile"
            )
        ]

    
    
}

