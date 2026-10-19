//
//  DMModel.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/17/26.
//

import Foundation

struct DMModel : Identifiable {
    let id = UUID()
    let name : String
    let message: String
    let time: String
    let profileImage: String
}

let exampleLists: [DMModel] = [
    DMModel(
        name: "juju",
        message: "안녕하세요 주주예용",
        time: "지금",
        profileImage: " "
    ),
    DMModel(
        name: "huihui",
        message: "반가워용 희희예용",
        time: "지금",
        profileImage: " "
    ),
    
    DMModel(
        name: "yupyup",
        message: "3차 세미나 렛쮸고",
        time: "15m",
        profileImage: " "
    ),
    
    DMModel(
        name: "tacos",
        message: "아~~ 재밌다 😂😂😂",
        time: "20m",
        profileImage: " "
    ),
    
    DMModel(
        name: "kk_kk",
        message: "나의 노래를 들어보실분 나는 케케",
        time: "1m",
        profileImage: " "
    ),
    
    DMModel(
        name: "hello_moa",
        message: "모아요에 오신 걸 환영",
        time: "2h",
        profileImage: " "
    ),
    
    DMModel(
        name: "goTosleep",
        message: "쿨쿨",
        time: "4h",
        profileImage: " "
    ),
    
    DMModel(
        name: "hungryMan",
        message: "저랑 떵개하실래요?",
        time: "5h",
        profileImage: " "
    ),
    
    DMModel(
        name: "moamoayo",
        message: "모아요에서 사과 한 입! 앙~",
        time: "10h",
        profileImage: " "
    ),
]
