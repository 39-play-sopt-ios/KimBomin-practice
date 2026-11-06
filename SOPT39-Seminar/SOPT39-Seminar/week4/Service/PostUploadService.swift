//
//  PostUploadService.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/6/26.
//

import SwiftUI

final class PostUploadService {
    static let shared = PostUploadService()
    
    private init() {}
    
    private func makeRequestBody(title: String, content: String, author: String) throws -> Data {
        do {
            return try JSONEncoder().encode(
                PostUploadRequestDTO(title: title, content: content, author: author)
            )
        } catch {
            throw NetworkError.requestEncodingError
        }
        
    }
    
    private func makeRequest(body: Data) throws -> URLRequest {
        guard let baseURL = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String,
              let url = URL(string: baseURL) else {
            throw NetworkError.urlError
        }

        guard let authorizationCode = UserDefaults.standard.string(forKey: "authorizationCode"),
              !authorizationCode.isEmpty else {
            throw NetworkError.unauthorized
        }

        var request = URLRequest(
            url: url.appending(path: "/api/v1/posts")
        )
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(authorizationCode, forHTTPHeaderField: "Authorization")
        
        request.httpBody = body
        
        return request
    }
    
    func postCreate(title: String, content: String) async throws -> PostUploadResponseDTO {
        guard let author = UserDefaults.standard.string(forKey: "authorName"),
              !author.isEmpty else {
            throw NetworkError.badRequest
        }

        let body = try makeRequestBody(title: title, content: content, author: author)
        let request = try makeRequest(body: body)
        
        let(data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.responseError
        }
        
        guard (200..<300).contains(httpResponse.statusCode) else {
            throw NetworkError(statusCode: httpResponse.statusCode)
        }
        
        do {
            return try JSONDecoder().decode(PostUploadResponseDTO.self, from: data)
        } catch {
            throw NetworkError.responseDecodingError
        }
    }
    

}
