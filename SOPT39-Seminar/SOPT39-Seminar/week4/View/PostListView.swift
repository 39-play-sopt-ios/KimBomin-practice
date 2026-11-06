//
//  PostListView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 11/6/26.
//

import SwiftUI

struct PostListView: View {
    @State private var searchText = ""
    @State private var posts: [PostListResponseDTO.Post] = []
    @State private var isLoading = false
    @State private var errorMessage = ""
    @State private var isShowingUploadSheet = false

    var body: some View {
        VStack(spacing: 0) {
            searchBar

            ScrollView {
                VStack(spacing: 12) {
                    ForEach(posts) { post in
                        PostCardRowView(
                            title: post.title,
                            content: post.content,
                            author: post.author,
                            createdAt: post.createdAt
                        )
                    }
                }
            }
            .overlay(alignment: .bottomTrailing) {
                Button {
                    isShowingUploadSheet = true
                } label: {
                    Image(.floatingButton)
                }
                .padding(16)
            }
        }
        .task {
            await loadPosts()
        }
        .sheet(isPresented: $isShowingUploadSheet) {
            PostUploadSheetView()
            .presentationDetents([.height(340)])
            .presentationDragIndicator(.visible)
            .presentationBackground(.white)
        }
    }

    private func loadPosts() async {
        do {
            let response = try await PostService.shared.getPosts()
            posts = response.data?.posts ?? []
        } catch {
            print(error)
        }
    }

    private var searchBar: some View {
        VStack(spacing: 0){
            HStack{
                TextField("검색어를 입력해주세요", text: $searchText)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .font(.m18)
                
                Spacer()
                
                Image(.search)
            }
            .padding(.horizontal, 16)
            .frame(height: 50)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(Color(.gray2), lineWidth: 2)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
        }
    }
}

#Preview {
    PostListView()
}
