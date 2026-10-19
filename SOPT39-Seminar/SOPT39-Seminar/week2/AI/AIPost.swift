//
//  AIPost.swift
//  SOPT39-Seminar
//
//  AI 비교 실습용 게시물 데이터
//

import Foundation

struct AIPost: Identifiable {
    let id = UUID()
    let username: String
    let location: String
    let imageName: String
    let currentPage: Int
    let totalPages: Int
    let likesText: String
    let caption: String
    let timeText: String
    var isLiked = false
}

extension AIPost {
    static let samples: [AIPost] = [
        AIPost(
            username: "moamoa",
            location: "서울, 대한민국",
            imageName: "postImage1",
            currentPage: 1,
            totalPages: 3,
            likesText: "모아요님 외 7,777명이 좋아합니다",
            caption: "벌써 2차 세미나라니 정말 즐거워요!",
            timeText: "1시간 전"
        ),
        AIPost(
            username: "moamoa",
            location: "서울, 대한민국",
            imageName: "postImage1",
            currentPage: 1,
            totalPages: 3,
            likesText: "모아요님 외 7,777명이 좋아합니다",
            caption: "같은 카드에 다른 데이터를 전달해보기~",
            timeText: "2시간 전"
        ),
        AIPost(
            username: "moamoa",
            location: "서울, 대한민국",
            imageName: "postImage1",
            currentPage: 1,
            totalPages: 3,
            likesText: "모아요님 외 7,777명이 좋아합니다",
            caption: "좋아요는 게시물마다 따로 눌려요",
            timeText: "3시간 전"
        )
    ]
}
