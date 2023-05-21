

import SwiftUI

struct Calculator_Screen: View {
    
    @StateObject var data = calculator()
    
    @AppStorage ("Start") var start : Double = 0
    @AppStorage ("Ch") var ch : Double = 0
    @AppStorage ("year") var yaer: Int = 10
   
    var body: some View {
        VStack{
        TextField("Стартовый капитал", value: $start, format: .number)
        TextField("Сколько вы готовы откладывать", value: $ch, format: .number)
        TextField("Количество лет", value: $yaer, format: .number)
            Text("\(Int(data.calculate(capital: start, rate: Double(10), monthlyDeposit: ch, numberOfYears: yaer)))")
        }
    }
}

struct Calculator_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Calculator_Screen()
    }
}
