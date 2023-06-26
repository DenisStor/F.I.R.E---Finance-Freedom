//
//  NewsModel.swift
//  F.I.R.E
//
//  Created by Денис Сторожев on 26.06.2023.
//

import SwiftUI

struct NewsModel: View {
    var title : String
    var text : String
    var body: some View {
        ZStack{
            VStack{
                HStack {
                    Text(title)
                        .foregroundColor(Color("Color_font"))
                    Spacer()
                }
                HStack {
                    Text(text)
                        .foregroundColor(Color("Color_font"))
                    Spacer()
                }
            }.padding(20)
        }.frame(height: 200)
            .background(
                Color.gray
                    .cornerRadius(30)
            )
    }
}

struct NewsModel_Previews: PreviewProvider {
    static var previews: some View {
        NewsModel(title: "vev", text: "ev")
    }
}
