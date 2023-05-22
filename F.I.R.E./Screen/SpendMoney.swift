//
//  SpendMoney.swift
//  F.I.R.E.
//
//  Created by Никита Малыхин on 21.05.2023.
//

import Foundation

final class SpendMoney : ObservableObject {
    
    //
    //    Доходы - расходы / 30.4
    //    30 000 - 20 000 / 30.4 ( 365 / 12 ) = 328 в день
    //
    
    func spendEarn (earn:Double, spend: Double) -> Double {
        
        var total = earn - spend
        total/=30.4
        
        
        if total <= 0 {
            total = 0
        }
        
        
        
        return total
        
    
  
        
    }
}
