

import SwiftUI
import SDWebImageSwiftUI
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
    @AppStorage ("words") private var currentword = ""
    @State private var spacingVs : CGFloat = 15
    
    
    
    
    
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
   
    
    @State private var timerForNewsAndStories = Timer.TimerPublisher(interval: 15, runLoop: .current, mode: .common).autoconnect()
    @State private var timerForNewsAndStoriesIsEmpty = Timer.TimerPublisher(interval: 1, runLoop: .current, mode: .common).autoconnect()
    @State private var timerForAnimation = Timer.TimerPublisher(interval: 0.5, runLoop: .current, mode: .common).autoconnect()
    @State private var LoadingNews = false
 
  
    
    
    var body: some View {
        
        
       
           
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
                            Timer.scheduledTimer(withTimeInterval: 15, repeats: true) { _ in
                                currentword = words.word.randomElement() ?? ""
                            }
                            
                        }
                        .padding(.top,10)
                        .padding(.top,spacingVs)
                        ZStack{
                            
                            LazyVStack {
                                ForEach(StoriesAndNews.newsData, id: \.self) { news in
                                    VStack(spacing:spacingVs){
                                        
                                        if news.islong {
                                            NavigationLink {
                                                ZStack{
                                                    Color("Color_back")
                                                        .edgesIgnoringSafeArea(.all)
                                                    ScrollView(showsIndicators: false){
                                                        VStack(spacing:20){
                                                            HStack(spacing:5) {
                                                                Text(news.time)
                                                                    .font(.system(size: 15,weight: .medium))
                                                                    .multilineTextAlignment(.leading)
                                                                    .foregroundColor(Color("Color_font"))
                                                                    .opacity(0.3)
                                                                Text("•")
                                                                    .font(.system(size: 15,weight: .medium))
                                                                    .multilineTextAlignment(.leading)
                                                                    .foregroundColor(Color("Color_font"))
                                                                    .opacity(0.3)
                                                                Text(news.date)
                                                                    .font(.system(size: 15,weight: .medium))
                                                                    .multilineTextAlignment(.leading)
                                                                    .foregroundColor(Color("Color_font"))
                                                                    .opacity(0.3)
                                                                Spacer()
                                                            }
                                                            .padding(.top,50)
                                                            HStack{
                                                                Text(news.title)
                                                                    .font(.system(size: 25,weight: .medium))
                                                                    .multilineTextAlignment(.leading)
                                                                    .foregroundColor(Color("Color_font"))
                                                                Spacer()
                                                            }
                                                            
                                                            WebImage(url: URL(string: news.img)!)
                                                            
                                                            
                                                                .onSuccess { image, data, cacheType in
                                                                    
                                                                }
                                                                .resizable()
                                                            
                                                            
                                                                .placeholder {
                                                                    Rectangle().foregroundColor(.gray)
                                                                }
                                                                .indicator(.activity) // Activity Indicator
                                                                .transition(.fade(duration: 0.5)) //
                                                                .scaledToFit()
                                                                .aspectRatio(contentMode: .fit)
                                                                .cornerRadius(30)
                                                            
                                                            
                                                            HStack{
                                                                Text(news.textin)
                                                                    .font(.system(size: 20,weight: .medium))
                                                                    .multilineTextAlignment(.leading)
                                                                    .foregroundColor(Color("Color_font"))
                                                                    .lineSpacing(10)
                                                                Spacer()
                                                            }
                                                            VStack{
                                                                VStack {
                                                                    HStack {
                                                                        Text("Источник:")
                                                                            .font(.system(size: 20,weight: .medium))
                                                                            .multilineTextAlignment(.leading)
                                                                            .foregroundColor(Color("Color_font"))
                                                                        Spacer()
                                                                    }
                                                                    HStack {
                                                                        Link(news.urlname, destination: URL(string: news.url)!)
                                                                        
                                                                            .font(.system(size: 20,weight: .medium))
                                                                            .multilineTextAlignment(.leading)
                                                                            .foregroundColor(Color("Color_font"))
                                                                        Spacer()
                                                                    }
                                                                    
                                                                }
                                                                
                                                            }.opacity(0.5)
                                                            
                                                            
                                                        }
                                                    }.padding(.horizontal,15)
                                                    
                                                    
                                                }
                                            } label: {
                                                
                                                ZStack{
                                                    
                                                    WebImage(url: URL(string: news.img)!)
                                                    // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
                                                        .onSuccess { image, data, cacheType in
                                                            // Success
                                                            // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
                                                        }
                                                        .resizable() // Resizable like SwiftUI.Image, you must use this modifier or the view will use the image bitmap size
                                                    
                                                        .placeholder(Image(systemName: "photo")) // Placeholder Image
                                                    // Supports ViewBuilder as well
                                                        .placeholder {
                                                            Rectangle().foregroundColor(.gray)
                                                        }
                                                        .indicator(.activity) // Activity Indicator
                                                        .transition(.fade(duration: 0.5)) // Fade Transition with duration
                                                        .scaledToFit()
                                                        .aspectRatio(contentMode: .fit)
                                                        .cornerRadius(30)
                                                        .overlay (
                                                            Color.black
                                                                .cornerRadius(30)
                                                                .opacity(0.4)
                                                        )
                                                        .overlay (
                                                            
                                                            
                                                            
                                                            VStack(spacing:5){
                                                                Spacer()
                                                                HStack(spacing:5) {
                                                                    Text(news.time)
                                                                        .font(.system(size: 15,weight: .medium))
                                                                        .multilineTextAlignment(.leading)
                                                                        .foregroundColor(Color("Color_font_2"))
                                                                        .opacity(0.8)
                                                                    Text("•")
                                                                        .font(.system(size: 15,weight: .medium))
                                                                        .multilineTextAlignment(.leading)
                                                                        .foregroundColor(Color("Color_font_2"))
                                                                        .opacity(0.8)
                                                                    Text(news.date)
                                                                        .font(.system(size: 15,weight: .medium))
                                                                        .multilineTextAlignment(.leading)
                                                                        .foregroundColor(Color("Color_font_2"))
                                                                        .opacity(0.8)
                                                                    Spacer()
                                                                }
                                                                HStack {
                                                                    Text(news.title)
                                                                        .font(.system(size: 23,weight: .semibold))
                                                                        .foregroundColor(Color("Color_font_2"))
                                                                        .multilineTextAlignment(.leading)
                                                                    Spacer()
                                                                }
                                                                
                                                            }.padding(.horizontal,15)
                                                                .padding(.vertical,30)
                                                        )
                                                }
                                                
                                                
                                            }
                                        } else {
                                            VStack(spacing:5){
                                                HStack(spacing:5) {
                                                    Image(systemName: "bolt.fill")
                                                        .font(.system(size: 15,weight: .medium))
                                                        .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font_1"))
                                                    Text(news.time)
                                                        .font(.system(size: 15,weight: .medium))
                                                        .multilineTextAlignment(.leading)
                                                        .opacity(0.8)
                                                    Text("•")
                                                        .font(.system(size: 15,weight: .medium))
                                                        .multilineTextAlignment(.leading)
                                                        .opacity(0.8)
                                                    Text(news.date)
                                                        .font(.system(size: 15,weight: .medium))
                                                        .multilineTextAlignment(.leading)
                                                        .opacity(0.8)
                                                    Spacer()
                                                }
                                                HStack {
                                                    Text(news.title)
                                                        .font(.system(size: 23,weight: .semibold))
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
                                    //.padding(.top,10)
                                }.animation(.spring(), value: StoriesAndNews.newsData)
                            }
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color("Color_back"))
                                .opacity(LoadingNews ? 0 : 1)
                                .animation(.spring(),value: LoadingNews)
                        }
                        Divider()
                            .frame(height: 2)
                        
            
                        ZStack{
                            
                            HStack {
                                
                                NavigationLink { Termin_Screen()}
                            label: {
                                ZStack{
                                    Image("slmenu")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(30)
                                        .overlay (
                                            VStack{
                                                Spacer()
                                                HStack{
                                                    
                                                    Text("Словарь")
                                                        .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font_2"))
                                                    
                                                        .font(.system(size: 25 ,weight: .semibold))
                                                    
                                                    Spacer()
                                                }.padding(.leading,20)
                                                    .padding(.bottom,25)
                                            }
                                        )
                                        .frame(height: 200)
                                }
                            }
                                
                                
                                NavigationLink { AboutFIRE_Screen()}
                            label: {
                                ZStack{
                                    Image("fimenu")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(30)
                                        .overlay (
                                            VStack{
                                                Spacer()
                                                HStack{
                                                    
                                                    Text("История F.I.R.E")
                                                        .multilineTextAlignment(.leading)
                                                        .foregroundColor(Color("Color_font_1"))
                                                    
                                                        .font(.system(size: 25 ,weight: .semibold))
                                                    
                                                    Spacer()
                                                }.padding(.leading,20)
                                                    .padding(.bottom,25)
                                            }
                                        )
                                        .frame(height: 200)
                                }
                            }
                                
                                Spacer()
                                
                            }
                            
                            
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color("Color_back"))
                                .opacity(LoadingNews ? 0 : 1)
                                .animation(.spring(),value: LoadingNews)
                            
                            
                        }
            
                        
                        
                        
                        
                        Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 100)
                    }.padding(.horizontal,15)
                   
             
                    }
               
                   
                
            }
            .refreshable {
                
                StoriesAndNews.fetchAndDecodeJSON_NEWS(from: URL(string: "https://appfire.ru/news.json")!)
                StoriesAndNews.fetchAndDecodeJSON_Stories(from: URL(string: "https://appfire.ru/news.json")!)
                
                create()
                
            }
            .animation(.spring(), value: spacingVs)
            .animation(.spring(), value: currentword)
            .onAppear(){
                        StoriesAndNews.fetchAndDecodeJSON_NEWS(from: URL(string: "https://appfire.ru/news.json")!)
                       StoriesAndNews.fetchAndDecodeJSON_Stories(from: URL(string: "https://appfire.ru/news.json")!)
                        
            }
            .onReceive(timerForNewsAndStories) { i in
                StoriesAndNews.fetchAndDecodeJSON_NEWS(from: URL(string: "https://appfire.ru/news.json")!)
            }
            .onReceive(timerForNewsAndStoriesIsEmpty) { i in
               
                if StoriesAndNews.newsData.isEmpty {
                    print("fetch")
                    StoriesAndNews.fetchAndDecodeJSON_NEWS(from: URL(string: "https://appfire.ru/news.json")!)
                } else {
                    print("200")
                }
            }
            .onReceive(timerForAnimation) { f in
                LoadingNews = true
            }
        
    }
    func create () {
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
   
}

struct Home_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Home_Screen()
    }
}
