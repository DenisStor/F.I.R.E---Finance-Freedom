//
//  calculator.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 21.05.2023.
//

import Foundation


final class Calculator : ObservableObject {

    func counttrue (BoolCount : [Bool?],ideal: [Bool]) -> Int {
        var count : Int = 0
        var index : Int = 0
        while index < 4  {
            
            if ideal[index] == BoolCount[index]{
                count += 1
                
            } 
            index += 1
        }
            return count
        
    }
    
    func spendEarn (earn: Float, spend: Float) -> Float {
        var total: Float = earn - spend
        total/=30.4

        
        if total <= 0 {
            total = 0
        }
        
        
        
        return total
        //
        //    Доходы - расходы / 30.4
        //    30 000 - 20 000 / 30.4 ( 365 / 12 ) = 328 в день
        //
    
  
        
    }
    
   
        
    func calculate(capital: Float, rate: Float, monthlyDeposit: Float, numberOfYears: Int) -> Float {
        /*Где:
         total - конечная сумма
         capital - стартовый капитал
         rate - процентная ставка в десятичном формате (например, 0.05 для 5%)
         numberOfYears - количество периодов (лет)
         monthlyDeposit - сумма, которую вы пополняете ежемесячно
        Эта формула учитывает как процентный рост на существующий капитал, так и ежемесячное пополнение, которое начисляется каждый месяц.
        Примечание: Формула предполагает, что пополнение происходит в конце каждого периода (например, в конце каждого месяца).  */
       
        let interestRate = rate / 100.0 //привести в нормальный вид
        let periodsPerYear = 12 //месяцев в году
        let totalPeriods = periodsPerYear * numberOfYears //всего месяцев
        
        var total = capital //для удобсва
        let monthlyRate = 1.0 + interestRate / Float(periodsPerYear)
        
        for _ in 1..<totalPeriods {
            total *= monthlyRate
            total += monthlyDeposit
        }
        
        return total
    }

 
}
  

