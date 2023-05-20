

import SwiftUI

struct ContentView: View {
    @AppStorage ("currentPage") var currentPage = 1
    var body: some View {
        ZStack{
        
            Start_Screen()
                .offset(x: currentPage == 1 ? 0 :  -1000)
        
            Bar_Screen()
                .offset(x: currentPage == 2 ? 0 :  1000)
        
        
        }.animation(.spring(), value: currentPage )
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE (3rd generation)")
        ContentView()
            .previewDevice("iPhone 14 Pro Max")
    }
}
