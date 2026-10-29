//
//  ListPraticeView.swift
//  SOPT39-Seminar
//
//  Created by 김보민 on 10/17/26.
//

import SwiftUI

struct ListPraticeView: View {
    
    struct MoaMoa : Identifiable, Hashable {
        let id = UUID()
        let name: String
    }
    
    private var moas = [
        MoaMoa(name: "성환"),
        MoaMoa(name: "성환"),
        MoaMoa(name: "성환"),
        MoaMoa(name: "성환"),
    ]
    
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationStack {
            List(moas, selection: $multiSelection){ moayo   in Text(moayo.name)
            
                
            }
            .navigationTitle("Moas")
            .toolbar { EditButton()}
        }
        
        Text("\(multiSelection.count) selections")
    }
}

#Preview {
    ListPraticeView()
}
