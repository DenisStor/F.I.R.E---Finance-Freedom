//
//  Test_Screen.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 27.05.2023.
//

import SwiftUI

struct Test_Screen: View {
    
    @State private var lesson : [String] =  [ NSLocalizedString("1q", comment: ""),
        NSLocalizedString("2q", comment: ""),
        NSLocalizedString("3q", comment: ""),
        NSLocalizedString("4q", comment: ""),
        NSLocalizedString("5q", comment: ""),
        NSLocalizedString("6q", comment: ""),
        NSLocalizedString("7q", comment: ""),
        NSLocalizedString("8q", comment: "")]
    
    
    
    @State private var TextInf : [String] = [
        NSLocalizedString("1a", comment: ""),
        NSLocalizedString("2a", comment: ""),
        NSLocalizedString("3a", comment: ""),
        NSLocalizedString("4a", comment: ""),
        NSLocalizedString("5a", comment: ""),
        NSLocalizedString("6a", comment: ""),
        NSLocalizedString("7a", comment: ""),
        NSLocalizedString("8a", comment: "")]
   
   @State private var Ideal : [Bool] = [false,false,false,false,false,false,false,false] //правильные ответы
   
  
    
    
    
    @State private var total : Float = 8
    @State private var progress : Float = 0
    
    @State private var nill : Int? = nil
    var body: some View {
        Test_View(totalQwestion: 8,Text_info: TextInf, TrueQwestion: Ideal, IsFinish: $nill)
           
    }
   
}

struct Test_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Test_Screen()
    }
}
