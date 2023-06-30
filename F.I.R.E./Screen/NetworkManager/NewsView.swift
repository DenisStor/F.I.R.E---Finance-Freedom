//
//  NewsView.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 30.06.2023.
//

import SwiftUI

struct NewsView: View {
    var title : String
    var textin : String
   
    var time : String
    var date : String
    var img : String
    var islong : Bool
    var url : String
    var urlA : String
    @Environment(\.openURL) var openURL
    var body: some View {
        
        NavigationStack {
            ZStack{
                if islong {
                    NavigationLink {
                        ZStack{
                            Color("Color_back")
                                .edgesIgnoringSafeArea(.all)
                            ScrollView(showsIndicators: false){
                                VStack{
                                    HStack(spacing:5) {
                                        Text(time)
                                            .font(.system(size: 15,weight: .medium))
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color("Color_font"))
                                            .opacity(0.5)
                                        Text("•")
                                            .font(.system(size: 15,weight: .medium))
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color("Color_font"))
                                            .opacity(0.5)
                                        Text(date)
                                            .font(.system(size: 15,weight: .medium))
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color("Color_font"))
                                            .opacity(0.5)
                                        Spacer()
                                    }
                                    .padding(.top,50)
                                    HStack{
                                        Text(title)
                                            .font(.system(size: 25,weight: .medium))
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color("Color_font"))
                                        Spacer()
                                    }
                                    AsyncImage(url:  URL(string:img)) { Image in
                                        Image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(30)
                                    } placeholder: {
                                        RoundedRectangle(cornerRadius: 30)
                                            .foregroundColor(Color.white)
                                            .opacity(0.5)
                                    }
                                    HStack{
                                        Text(textin)
                                            .font(.system(size: 20,weight: .medium))
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color("Color_font"))
                                        Spacer()
                                    }
                                    VStack{
                                        HStack {
                                            Text(urlA)
                                                .font(.system(size: 15,weight: .medium))
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(Color("Color_font"))
                                            
                                            Spacer()
                                        }
                                        .onTapGesture {
                                            openURL(URL(string: NSLocalizedString(url, comment: "url"))!)
                                        }
                                    }.opacity(0.5)
                                    
                                }
                            }.padding(.horizontal,15)
                            
                            
                        }
                    } label: {
                        
                        
                        VStack(spacing:5){
                           
                            HStack(spacing:5) {
                                Text(time)
                                    .font(.system(size: 15,weight: .medium))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color("Color_font_2"))
                                    .opacity(0.5)
                                Text("•")
                                    .font(.system(size: 15,weight: .medium))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color("Color_font_2"))
                                    .opacity(0.5)
                                Text(date)
                                    .font(.system(size: 15,weight: .medium))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color("Color_font_2"))
                                    .opacity(0.5)
                                Spacer()
                            }.padding(.top,50)
                                HStack {
                                    Text(title)
                                        .font(.system(size: 25,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                           
                        }.padding(.horizontal,15)
                        .padding(.vertical,30)
                        
                            .background(
                                
                                AsyncImage(url:  URL(string:img)) { Image in
                                    Image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(30)
                                } placeholder: {
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(Color.white)
                                        .opacity(0.5)
                                }
                                
                                
                            )
                    }
                } else {
                    
                    VStack(spacing:20){
                        HStack(spacing:5) {
                            Image(systemName: "bolt.fill")
                                .font(.system(size: 15,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font_1"))
                            Text(time)
                                .font(.system(size: 15,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .opacity(0.5)
                           Text("•")
                                .font(.system(size: 15,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .opacity(0.5)
                           Text(date)
                                  .font(.system(size: 15,weight: .medium))
                                  .multilineTextAlignment(.leading)
                                  .opacity(0.5)
                            Spacer()
                        }
                        HStack {
                            Text(title)
                                .font(.system(size: 25,weight: .medium))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Color_font"))
                            Spacer()
                        }
                    }.padding(.horizontal,15)
                    .padding(.vertical,30)
                     
                    .background(
                       RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(Color("Color_button"))
                       
                        

                    )
                    
                }
            }
        }
    }
}
