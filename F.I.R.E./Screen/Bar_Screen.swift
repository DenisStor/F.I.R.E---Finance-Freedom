

import SwiftUI

struct Bar_Screen: View {
   
    var body: some View {
        ZStack{
 
                   TabView {
                       Home_Screen()
                           
                           .tabItem {
                             
                               Label("Home", systemImage: "house")
                                   
                           }
                       Calculator_Screen()
                           .tabItem {
                               Label("Calculator", systemImage: "function")
                           }
                       Settings_screen()
                           
                           .tabItem {
                               Label("Settings", systemImage: "gear")
                           }
                   }.accentColor(.red)
                      
                      
               }
    }
}

struct Home_Screen__Previews: PreviewProvider {
    static var previews: some View {
        Bar_Screen()
    }
}
