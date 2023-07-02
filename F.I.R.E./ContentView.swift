import SwiftUI

struct ContentView: View {
    @AppStorage ("currentPage") var currentPage : Int = 1
    
    @State private var IsLoading = false
    @State private var index = 0
    @State private var timer = Timer.TimerPublisher(interval: 0.5, runLoop: .current, mode: .common).autoconnect()
    var body: some View {
        ZStack{
           
                Start_Screen()
                    .offset(x: currentPage == 1 ? 0 :  -700)
                
                Bar_Screen()
                    .offset(x: currentPage == 2 ? 0 :  700)
           
               
            ZStack {
                Color("Color_font_1")
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("name_name_name")
                        .onReceive(timer) { i in
                            index += 1
                            if index == 2 {
                                IsLoading = true
                            }
                        }
                }
            }.offset(y: IsLoading ? 1000 : 0)
            .animation(.spring(), value: IsLoading)
            
        
        }.animation(.easeInOut, value: currentPage )
            
   }
}
 // true, true, true , false ,false , true
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE (3rd generation)")
        ContentView()
            .previewDevice("iPhone 14 Pro")
    }
}

