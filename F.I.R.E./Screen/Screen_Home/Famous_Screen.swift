//
//  Famous_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 23.05.2023.
//

import SwiftUI
struct FamousStr {
    let name : String
    let title : String
    let text : String
    let whoIs : String
    let imageTitle : String
    let imageSecond : String
    
    
}
let FamousArray = [
FamousStr(
          name: NSLocalizedString("Уоррен\nБаффет", comment: ""),
          title: NSLocalizedString("Уоррен\nБаффет", comment: ""),
          text: NSLocalizedString("мумумукмуму", comment: ""),
          whoIs: NSLocalizedString("мумумукмуму", comment: ""),
          imageTitle: "Baffet" ,
          imageSecond: "Baffet"
),
FamousStr(
          name: NSLocalizedString("qB1", comment: ""),
          title: NSLocalizedString("", comment: ""),
          text: NSLocalizedString("", comment: ""),
          whoIs: NSLocalizedString("мумумукмуму", comment: ""),
          imageTitle: "famous_name1" ,
          imageSecond: "famous_name1"
),
FamousStr(
          name: NSLocalizedString("famous_name4", comment: ""),
          title: NSLocalizedString("", comment: ""),
          text: NSLocalizedString("", comment: ""),
          whoIs: NSLocalizedString("мумумукмуму", comment: ""),
          imageTitle: "qB1" ,
          imageSecond: "qB1"
),

]
struct Famous_Screen: View {
    @State private var name : [String] = [
    NSLocalizedString("famous_name1", comment: ""),
    NSLocalizedString("qB1", comment: ""),
    NSLocalizedString("famous_name4", comment: ""),


    ]
    
    


    var body: some View {
        
        ZStack{
       
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
         
            NavigationStack{
                
                ScrollView(showsIndicators: false){
                    
                    LazyVStack(spacing: 15){
                        
                        ForEach(0..<FamousArray.count) { index in
                            NavigationLink {
                                
                                ZStack{
                                    Color("Color_back")
                                        .edgesIgnoringSafeArea(.all)
                                    
                                        ScrollView{
                                         
                                            VStack{
                                              
                                                ZStack {
                                                    Image(FamousArray[index].imageSecond)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .cornerRadius(30)
                                                    VStack {
                                                        Spacer()
                                                        Text(FamousArray[index].title)
                                                            .multilineTextAlignment(.center)
                                                            .font(.system(size: 25, weight: .medium))
                                                            .foregroundColor(Color("Color_bl"))
                                                            .padding(.bottom,1)
                                                          
                                                        Text (FamousArray[index].whoIs)
                                                        .font(.system(size: 15, weight: .medium))
                                                        .foregroundColor(Color("textField"))
                                                        .padding(.bottom,15)
                                                       
                                                    }
                                                    
                                                    
                                                }
                                                
                                                Text(FamousArray[index].text)
                                                    
                                                    .font(.system(size: 20, weight: .medium))
                                                    .lineSpacing(10)
                                                    .padding(.top,15)
                                                
                                                
                                                
                                                
                                            }  .padding(.horizontal, 20)
                                        }
                                       
                                        
                                        
                                    
                                 
                                }
                                
                            } label: {
                                
                                
                                ZStack{
                                    
                                    
                                    Image(FamousArray[index].imageTitle)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(30)
                                    VStack{
                                        Spacer()
                                        HStack{
                                            
                                            Text(FamousArray[index].name)
                                             
                                            .font(.system(size: 30, weight: .medium))
                                            .foregroundColor(Color("Color_bl"))
                                            .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                    }.padding(.horizontal, 25)
                                        .padding(.vertical, 20)
                                }
                                    
                            }
                        }
                        
                    }
                } .padding(.horizontal,15)
                   
                
            }
            
        }
        
    }
    
}

struct Famous_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Famous_Screen()
    }
}
