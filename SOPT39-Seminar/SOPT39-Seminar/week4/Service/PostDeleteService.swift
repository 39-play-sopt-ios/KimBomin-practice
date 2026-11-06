//
//  PostDeleteService.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/7/26.
//

import SwiftUI

final class PostDeleteService {
    static let shared = PostDeleteService()
    
    private init() {}
    
    private func makeRequest(postID: Int) throws -> URLRequest {
        guard let baseURL = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String,
              let url = URL(string: baseURL) else {
            throw NetworkError.urlError
        }

        guard let authorizationCode = UserDefaults.standard.string(forKey: "authorizationCode"),
              !authorizationCode.isEmpty else {
            throw NetworkError.unauthorized
        }

        var request = URLRequest(
            url: url.appending(path: "/api/v1/posts/\(postID)")
        )
        request.httpMethod = "DELETE"
        request.setValue(authorizationCode, forHTTPHeaderField: "Authorization")

        return request
    }
    
    func postDelete(postID: Int) async throws -> PostDeleteResponseDTO {
        
        let request = try makeRequest(postID: postID)
        
        let (data, response) = try await URLSession.shared.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.responseError
        }

        guard (200..<300).contains(httpResponse.statusCode) else {
            throw NetworkError(statusCode: httpResponse.statusCode)
        }

        do {
            return try JSONDecoder().decode(PostDeleteResponseDTO.self, from: data)
        } catch {
            throw NetworkError.responseDecodingError
        }
    }
}

