

import SwiftUI

struct Settings_screen: View {
    var body: some View {
        NavigationStack{
            
            ZStack {
                Color("Color_back")
                    .ignoresSafeArea()
                
                VStack(alignment: .leading){
                 
                    ZStack{
                            RoundedRectangle(cornerRadius: 22)
                                .foregroundColor(Color("button"))
                                .frame(height: 64)
                            HStack {
                            Text("🔔 Уведомления")
                                .font(.system(size: 24.5, weight: .medium))
                                .padding(20)
                            Spacer()
                           
                                    
                        }
                    }
                    
                    
                    
                    ZStack{
                            RoundedRectangle(cornerRadius: 22)
                                .foregroundColor(Color("button"))
                                .frame(height: 64)
                            HStack {
                            Text("🌙 Тема")
                                .font(.system(size: 24.5, weight: .medium))
                                .padding(20)
                            Spacer()
                                
                        }
                    }
                    
                    ZStack{
                            RoundedRectangle(cornerRadius: 22)
                                .foregroundColor(Color("button"))
                                .frame(height: 64)
                            HStack {
                            Text("💵 Валюта")
                                .font(.system(size: 24.5, weight: .medium))
                                .padding(20)
                                
                            Spacer()
                                
                        }
                        
                    }
                    
                    Spacer()
                    
                    Text("У вас актуальная версия приложения")
                        .font(.system(size: 24.5, weight: .medium))
                        .foregroundColor(Color("Color_font"))
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 22)
                            .foregroundColor(Color("Color_font_1"))
                            .frame(height: 64)
                        HStack {
                            Text("Сбросить данные")
                            
                                .font(.system(size: 24.5, weight: .medium))
                                .foregroundColor(Color("Color_font_2"))
                            Image("strelka")
                            Spacer()
                        } .padding(20)
                        
                    }
                    
                }
                .padding(.horizontal, 15)
                .padding(.bottom, 15)
                .navigationTitle("Настройки")
                .navigationBarTitleDisplayMode(.inline)
                
            
            
            
            
            
            
            
            
            
        }
        }
    }
        
        struct Settings_screen_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
                    .previewDevice("iPhone SE (3rd generation)")
                ContentView()
                    .previewDevice("iPhone 14 Pro Max")
            }
        }
    }

