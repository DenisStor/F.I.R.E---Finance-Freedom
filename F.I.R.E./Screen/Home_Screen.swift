

import SwiftUI
struct storisBar {
    let imageStringTitle : String
    let imageString : String
    let textTime : String
    let textTitle : String
    let text1 : String
    let fontColor : String
}

struct Home_Screen: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
   
    let words = strings()
    @State private var currentword = ""
    @State private var spacingVs : CGFloat = 20
    
    
    
    
    
    @ObservedObject private var StoriesAndNews = NetworkManager()
    let stories = [
    storisBar(
              imageStringTitle: "Stor 1", //картинка которая видна с home screen
              imageString : "Stor 1-2", // внутренняя картинка
              textTime : NSLocalizedString("brgr", comment: ""), // время чтения
              textTitle: NSLocalizedString("lwekjgh213", comment: ""), //заголовок
              text1:     NSLocalizedString("q3tyh", comment: ""),
              fontColor: "Color_font_2"
              ),//,
    storisBar(
              imageStringTitle: "Stor 2",
              imageString : "Stor 2-2",
              textTime : NSLocalizedString("qerhjqer", comment: ""),
              textTitle: NSLocalizedString("dwqhb5", comment: ""),
              text1:     NSLocalizedString("sgwioehn", comment: ""),
              fontColor: "Color_font_2"
             ),
    storisBar(
              imageStringTitle: "Stor 3",
              imageString : "Stor 3-3",
              textTime : NSLocalizedString("qerhjqer1", comment: ""),
              textTitle: NSLocalizedString("rejerh", comment: ""),
              text1:     NSLocalizedString("bokwehg", comment: ""),
              fontColor: "Color_font"
              ),
    storisBar(
              imageStringTitle: "Stor 4",
              imageString : "Stor 12",
              textTime : NSLocalizedString("qerhjqer1", comment: ""),
              textTitle: NSLocalizedString("ryteklwtaejrh", comment: ""),
              text1:     NSLocalizedString("birwebhn", comment: ""),
              fontColor: "Color_font_2"
              ),
    storisBar(
              imageStringTitle: "Stor 5",
              imageString : "Stor 4-4",
              textTime : NSLocalizedString("qerhjqer12", comment: ""),
              textTitle: NSLocalizedString("nohiowrh", comment: ""),
              text1:     NSLocalizedString("inobern", comment: ""),
              fontColor: "Color_font"
             ),
    storisBar(
              imageStringTitle: "Stor 6",
              imageString : "Stor Gold",
              textTime : NSLocalizedString("qerhjqer1267", comment: ""),
              textTitle: NSLocalizedString("aoperhinoweh", comment: ""),
              text1:     NSLocalizedString("renqerh", comment: ""),
              fontColor: "Color_font"
             ),
    storisBar(
              imageStringTitle: "Stor 7",
              imageString : "Stor 8-8",
              textTime : NSLocalizedString("qerhjqer29", comment: ""),
              textTitle: NSLocalizedString("nwrtm", comment: ""),
              text1:     NSLocalizedString("gweghiewgno", comment: ""),
              fontColor: "Color_font_2"
             ),
    ]
   
 

 
    
    
    
    var body: some View {
        
        
        NavigationStack{
           
            ZStack{
                Color("Color_back")
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false){
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(0..<4) { index in
                                NavigationLink {
                                    ZStack{
                                        Color("Color_back")
                                            .edgesIgnoringSafeArea(.all)
                                        ScrollView {
                                            VStack(spacing:50){
                                                VStack(spacing:10){
                                                    HStack{
                                                        Image("str")
                                                            .aspectRatio(contentMode: .fit)
                                                        Text(stories[index].textTime)
                                                        
                                                            .font(.system(size: 20,weight: .medium))
                                                            .multilineTextAlignment(.center)
                                                            .foregroundColor(Color("Color_font"))
                                                        
                                                        
                                                    }
                                                    
                                                    Text(stories[index].textTitle)
                                                        .font(.system(size: 35,weight: .medium))
                                                        .multilineTextAlignment(.center)
                                                }
                                                Image("\(stories[index].imageString)")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .cornerRadius(30)
                                                
                                                
                                                HStack {
                                                    Text(stories[index].text1)
                                                        .font(.system(size: 20,weight: .medium))
                                                        .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font"))
                                                        .lineSpacing(12)
                                                    Spacer()
                                                }
                                                
                                            }.padding(.horizontal,20)
                                        }
                                    }
                                } label: {
                                    
                                    
                                    ZStack{
                                        Image(stories[index].imageStringTitle)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(30)
                                            .padding(.leading, index == 0 ? 15 : 10)
                                            .overlay (
                                                VStack{
                                                    Spacer()
                                                    HStack{
                                                        
                                                        Text("\(stories[index].textTitle)")
                                                            .multilineTextAlignment(.leading)
                                                            .foregroundColor(Color(stories[index].fontColor))
                                                            .font(.system(size: 20 ,weight: .semibold))
                                                        
                                                        Spacer()
                                                    }.padding(.leading,30)
                                                        .padding(.bottom,25)
                                                }
                                            )
                                            .frame(height: 250)
                                    }
                                }
                            }
                        }
                    }
                    
                    VStack(spacing: spacingVs){
                        
                        ZStack{
                            
                            VStack(){
                                
                                VStack(spacing:10){
                                    HStack{
                                        Text("\(currentword)")
                                        
                                            .font(.system(size: 20,weight: .medium))
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(Color("Color_font_2"))
                                        Spacer()
                                    }
                                    HStack{
                                        Image(systemName: "hand.tap")
                                        
                                        
                                        Text("GT2")
                                        
                                        
                                        Spacer()
                                    }.font(.system(size: 18,weight: .medium))
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color("Color_font_2"))
                                        .opacity(0.5)
                                } .padding(.horizontal,20)
                                    .padding(.vertical,20)
                                    .background (
                                        RoundedRectangle(cornerRadius: 30)
                                            .foregroundColor(Color("Color_font_1"))
                                        
                                    )
                                
                                
                                
                            }
                            .animation(.spring(), value: currentword)
                            
                            .onTapGesture {
                                currentword = words.word.randomElement() ?? ""
                                let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
                                impactHeavy.impactOccurred()
                            }
                            
                        }
                        .onAppear{
                            
                            if currentword.isEmpty {
                                currentword = words.word.randomElement() ?? ""
                            }
                            Timer.scheduledTimer(withTimeInterval: 30, repeats: true) { _ in
                                currentword = words.word.randomElement() ?? ""
                            }
                            
                        }
                        .padding(.top,spacingVs)
                        ForEach(StoriesAndNews.newsData, id: \.self) { news in
                            VStack(spacing:0){
                                if StoriesAndNews.newsData.isEmpty {
                                    Text("Errore")
                                } else  {
                                    
                                    NewsView(title: news.title, textin: news.textin,time: news.time, date: news.date, img: news.img, islong: news.islong,url: news.url,urlA: news.urlname)
                                }
                            }
                        }.animation(.spring(), value: StoriesAndNews.newsData)
                    }.padding(.horizontal,15)
                   
                
                    }
                .refreshable {
                    
                    StoriesAndNews.fetchAndDecodeJSON_NEWS(from: URL(string: "https://appfire.ru/news.json")!)
                    StoriesAndNews.fetchAndDecodeJSON_Stories(from: URL(string: "https://appfire.ru/news.json")!)
                    
                    
                    if spacingVs == 120 {
                        
                    } else {
                        spacingVs = spacingVs + 15
                        if spacingVs == 20 {
                            
                        }
                        else {
                           
                                Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { _ in
                                    spacingVs -= 15
                                }
                            
                        }
                    }
                }
                    .animation(.spring(), value: spacingVs)
                    .animation(.spring(), value: currentword)
                
            }
            
        }.onAppear(){
                    StoriesAndNews.fetchAndDecodeJSON_NEWS(from: URL(string: "https://appfire.ru/news.json")!)
                    StoriesAndNews.fetchAndDecodeJSON_Stories(from: URL(string: "https://appfire.ru/news.json")!)
                    
        }
        
    }
   
}

struct Home_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen()
    }
}
