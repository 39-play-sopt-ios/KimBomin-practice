//
//  DMListVIew.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/17/26.
//

import SwiftUI

struct DMListView: View {
    @State private var viewModel = DMViewModel()
    var body: some View {
        List(viewModel.message){ message in
            MessageRowView(item: message)
                .listRowSeparator(.hidden)
                .listRowInsets(
                    EdgeInsets(
                        top: 0, leading: 16, bottom: 16, trailing: 16)
                )
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .background(.white)
        
    }
}
