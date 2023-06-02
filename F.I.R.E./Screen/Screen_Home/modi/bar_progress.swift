//
//  bar_progress.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 02.06.2023.
//

import SwiftUI

struct bar_progress: View {
    var progress : Float
    var total : Float
    var body: some View {
        GeometryReader { screen in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: .infinity)
                    .frame(height: 12)
                    .foregroundColor(Color("Color_font"))
                    .opacity(0.2)
                    
                RoundedRectangle(cornerRadius: .infinity)
                    .frame(height: 12)
                    .foregroundColor(Color("Color_font_1"))
                    .frame(width: screen.size.width * CGFloat(progress) / CGFloat(total))
            }.animation(.easeInOut(duration: 0.5), value: progress)
        }
    }
}

struct bar_progress_Previews: PreviewProvider {
    static var previews: some View {
        bar_progress(progress: 0, total: 8)
    }
}
