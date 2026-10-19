////
////  ContentView1.swift
////  SOPT39-Seminar
////
////  Created by 김보민 on 10/17/26.
////
//
//import SwiftUI
//
//struct ContentView1: View {
//    
//    struct MoaMoa: Identifiable {
//        let id = UUID()
//        let name: String
//    }
//    
//    struct MoaGroup: Identifiable {
//        let id = UUID()
//        let name : String
//        let members: [MoaMoa]
//        
//    }
//    
//    private let moaGroups = [
//        MoaGroup(
//            name: "1조"
//            members: [
//                MoaMoa(name: "성환"),
//            MoaMoa(name: "세령")
//            ]
//            ),
//        
//        MoaGroup(
//            name: "1조"
//            members: [
//                MoaMoa(name: "성환"),
//            MoaMoa(name: "세령")
//            ]
//            ),
//        
//        MoaGroup(
//            name: "1조"
//            members: [
//                MoaMoa(name: "성환"),
//            MoaMoa(name: "세령")
//            ]
//            ),
//        
//        MoaGroup(
//            name: "1조"
//            members: [
//                MoaMoa(name: "성환"),
//            MoaMoa(name: "세령")
//            ]
//            )
//        
//        
//    ]
//    
//    @State private var singleSelection: UUID?
//    
//    var body: some View {
//        NavigationStack{
//            List(selection: &singleSelection) {
//                ForEach(moaGroups){ group in
//                    Section(group.name) {
//                        ForEach(group.members) {
//                            moayo in
//                            Text(moayo.name)
//                                .tag(moayo.id)
//                        }
//                    }
//                }
//            }
//            .navigationTitle("모아요 이름 목록")
//        }
//    }
//}
//
//#Preview {
//    ContentView1()
//}
