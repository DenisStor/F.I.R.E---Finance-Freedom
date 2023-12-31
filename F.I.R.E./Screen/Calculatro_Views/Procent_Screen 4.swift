//
//  Procent_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 21.05.2023.
//

import SwiftUI

struct Procent_Screen: View {
    
    @StateObject var data = Calculator()
    
    @AppStorage ("Start") var Start : String = ""
    @AppStorage ("InMonth") var InMonth : String = ""
    @AppStorage ("Year") var Year : Double = 1
    @AppStorage ("Rate") var Rate : Int = 4
    
    @State private var Sheet : Bool = false
    @FocusState var isInputActive: Bool
    @FocusState var isInputActive_1: Bool
    
    let characterLimit : Int = 9
    
    var body: some View {
        ZStack {
            Color("Color_back")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20){
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 180)
                            .foregroundColor(Color("Color_font_1"))
                        HStack{
                            VStack(alignment: .leading,spacing: 10){
                                Text("procent1")
                                    .font(.system(size: 30, weight: .medium))
                                    .foregroundColor(Color("Color_font_2"))
                                HStack {
                                    TextField("", text: Binding(
                                        get: {
                                            self.InMonth
                                        },
                                        set: { newValue in
                                            let filtered = newValue.filter { "0123456789".contains($0) }
                                            if filtered.count <= characterLimit {
                                                self.InMonth = filtered
                                            }
                                        }
                                    ))
                                    
                                    .font(.system(size: 25))
                                    .frame(height: 45)
                                    .padding(.horizontal,15)
                                    .foregroundColor(Color("Color_black"))
                                    .background{
                                        RoundedRectangle(cornerRadius: 15)
                                            .foregroundColor(Color("Color_font_2"))
                                        
                                    }
                                    .keyboardType(.numberPad)
                                    .focused($isInputActive)
                                    
                                    
                                    Text("valuta")
                                        .font(.system(size: 33,weight: .medium))
                                        .foregroundColor(Color("Color_font_2"))
                                    Spacer()
                                }
                            }
                        }.padding(.horizontal,20)
                        Spacer()
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 350)
                            .foregroundColor(Color("Color_Start"))
                        VStack{
                            HStack{
                                VStack(alignment: .leading,spacing: 10){
                                    Text("procent2")
                                        .font(.system(size: 30,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                    HStack {
                                        TextField("", text: Binding(
                                            get: {
                                                self.Start
                                            },
                                            set: { newValue in
                                                let filtered = newValue.filter { "0123456789".contains($0) }
                                                if filtered.count <= characterLimit {
                                                    self.Start = filtered
                                                }
                                            }
                                        ))
                                        .font(.system(size: 25))
                                        .padding(.horizontal,15)
                                        .frame(height: 45)
                                        .foregroundColor(Color("Color_black"))
                                        .background{
                                            RoundedRectangle(cornerRadius: 15)
                                                .foregroundColor(Color("Color_font_2"))
                                            
                                        }
                                        .keyboardType(.numberPad)
                                        .focused($isInputActive_1)
                                        
                                        Text("valuta")
                                            .font(.system(size: 33,weight: .medium))
                                            .foregroundColor(Color("Color_font"))
                                        Spacer()
                                    }
                                }
                            }.padding(.horizontal,20)
                            
                            RoundedRectangle(cornerRadius: 30)
                                .frame(height: 5)
                                .foregroundColor(Color("Color_font_2"))
                                .opacity(0.4)
                            HStack{
                                VStack(alignment: .leading,spacing: 10){
                                    Text("procent3")
                                        .font(.system(size: 30,weight: .medium))
                                        .foregroundColor(Color("Color_font"))
                                        .padding(.top,33)
                                    VStack(spacing: 0) {
                                        Slider(value: $Year, in: 1...50) {
                                            Text("Slider")
                                            
                                        }
                                        .tint(.red)
                                        
                                        .padding(.top,33)
                                        Text("\(Int(Year))")
                                            .font(.system(size: 21,weight: .medium))
                                            .foregroundColor(Color("Color_font_3"))
                                        
                                        Spacer()
                                    }
                                }
                            }.padding(.horizontal,20)
                        }.padding(.top,20)
                        
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 300)
                            .foregroundColor(Color("Color_Start"))
                        VStack(alignment: .leading,spacing:10){
                            VStack{
                                
                                Text("procent4")
                                    .font(.system(size: 30,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                
                            }
                            VStack{
                                Picker(selection: $Rate, label: Text("Choose")) {
                                    Text("4%").tag(4)
                                    Text("8%").tag(8)
                                    Text("12%").tag(12)
                                    Text("20%").tag(20)
                                }.pickerStyle(.inline)
                                    .frame(height: 150)
                            }
                            VStack{
                                HStack{
                                    Text("procent5")
                                    Image(systemName: "info.circle")
                                }.foregroundColor(Color("Color_font_3"))
                                
                            }
                            .onTapGesture {
                                Sheet = true
                            }
                            
                            
                        }.padding(.horizontal,20)
                            .foregroundColor(Color("Color_font_2"))
                            .font(.system(size: 22,weight: .medium))
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(height: 200)
                            .foregroundColor(Color("Color_Start"))
                        VStack(alignment: .leading,spacing: 15){
                            HStack{
                                Text("procent6")
                                    .font(.system(size: 30,weight: .medium))
                                    .foregroundColor(Color("Color_font"))
                                
                            }
                            HStack{
                                Text("\(String(Int(data.calculate(capital: Float(Start)  ?? 0, rate: Float(Rate), monthlyDeposit: Float(InMonth) ?? 0, numberOfYears: Int(Year)))))")
                                    .font(.system(size: 40,weight: .medium))
                                    .foregroundColor(Color("Color_font_1"))
                                    .lineLimit(1)
                                Text("valuta")
                                    .font(.system(size: 40,weight: .medium))
                                    .foregroundColor(Color("Color_font_1"))
                                Spacer()
                            }
                        }.padding(.horizontal,20)
                    }
                    
                }
            }.padding(.horizontal,15)
                .sheet(isPresented: $Sheet) {
                    VStack{
                        Text("Риск-профиль или инвестиционный профиль участника рынка — это оценка его толерантности к риску. Со всем этим может помочь разобраться определение риск-профиля, которое, кстати, используется для того, чтобы затем выбрать подходящие именно для вас и реализации вашей цели финансовые инструменты и сформировать удобную для вас инвестстратегию.")
                            .font(.system(size: 22,weight: .medium))
                            .foregroundColor(Color("Color_font"))
                            .multilineTextAlignment(.leading)
                        
                            .presentationDetents([.height(500)])
                    }.padding(.horizontal,20)
                }
        }.toolbar(.hidden, for: .tabBar)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    if isInputActive {
                        Button("Done") {
                            isInputActive = false
                        }
                    } else {
                        Button("Done") {
                            isInputActive_1 = false
                        }
                    }
                }
            }
        
        
    }
}

struct Procent_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Procent_Screen()
    }
}

