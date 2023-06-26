//
//  TestNetwork.swift
//  F.I.R.E
//
//  Created by Денис Сторожев on 26.06.2023.
//

import SwiftUI

struct MainNetwork: View {
    @ObservedObject private var postData = PostData()
    @State private var Time0 = Timer.TimerPublisher(interval: 2, runLoop: .current, mode: .common).autoconnect()
    @State private var Time1 = Timer.TimerPublisher(interval: 10, runLoop: .current, mode: .common).autoconnect()
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                VStack {
                    if postData.posts.isEmpty {
                        Text("Loading...")
                    } else {
                        ScrollView(showsIndicators: false) {
                            ForEach(postData.posts, id: \.self) { post in
                                
                                    NewsModel(title: post.title, text: post.text)
                                
                                
                            }
                        }.padding(.horizontal,15)
                    }
                }
            } .onAppear {
                if let url = URL(string: "https://appfire.ru/info.json") {
                    postData.fetchAndDecodeJSON(from: url)
                }
            }
            .onReceive(Time0) { _ in
                if postData.posts.isEmpty {
                    if let url = URL(string: "https://appfire.ru/info.json") {
                        postData.fetchAndDecodeJSON(from: url)
                    }
                } else {
                    print("200")
                }
            }
            .onReceive(Time1) { _ in
                if let url = URL(string: "https://appfire.ru/info.json") {
                    postData.fetchAndDecodeJSON(from: url)
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
