//
//  TestNetwork.swift
//  F.I.R.E
//
//  Created by Денис Сторожев on 26.06.2023.
//

import SwiftUI

struct MainNetwork: View {
    @StateObject private var postData = API()
    @State private var Time0 = Timer.TimerPublisher(interval: 2, runLoop: .current, mode: .common).autoconnect()
    @State private var Time1 = Timer.TimerPublisher(interval: 10, runLoop: .current, mode: .common).autoconnect()
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                VStack {
                    if postData.newsVar.isEmpty {
                        Text("Loading...")
                    } else {
                        ScrollView(showsIndicators: false) {
                            ForEach(postData.newsVar, id: \.self) { post in
                                NavigationLink {
                                    VStack {
                                        Text(post.titleRU)
                                        Text(post.textRU)
                                    }
                                } label: {
                                    NewsModel(title: post.titleRU, text: post.textRU)
                                }
                                
                            }
                        }.padding(.horizontal,15)
                    }
                }
            }.onAppear {
                if let url = URL(string: "https://appfire.ru/info.json") {
                    postData.JsonDecode(from: url)
                }
            }
            .onReceive(Time0) { _ in
                if postData.newsVar.isEmpty {
                    if let url = URL(string: "https://appfire.ru/info.json") {
                        postData.JsonDecode(from: url)
                    }
                } else {
                    print("200")
                }
            }
            .onReceive(Time1) { _ in
                if let url = URL(string: "https://appfire.ru/info.json") {
                    postData.JsonDecode(from: url)
                }
        }
        }
        
    }
}

struct TestNetwork_Previews: PreviewProvider {
    static var previews: some View {
        MainNetwork()
    }
}
