//
//  calculator.swift
//  F.I.R.E.
//
//  Created by Денис Сторожев on 21.05.2023.
//

import Foundation


final class calculator : ObservableObject {
/*Где:
 total - конечная сумма
 capital - стартовый капитал
 rate - процентная ставка в десятичном формате (например, 0.05 для 5%)
 numberOfYears - количество периодов (лет)
 monthlyDeposit - сумма, которую вы пополняете ежемесячно
Эта формула учитывает как процентный рост на существующий капитал, так и ежемесячное пополнение, которое начисляется каждый месяц.
Примечание: Формула предполагает, что пополнение происходит в конце каждого периода (например, в конце каждого месяца).  */
    
    
  
    
   
        
    func calculate(capital: Double, rate: Double, monthlyDeposit: Double, numberOfYears: Int) -> Double {
        
       
        let interestRate = rate / 100.0 //привести в нормальный вид
        let periodsPerYear = 12 //месяцев в году
        let totalPeriods = periodsPerYear * numberOfYears //всего месяцев
        
        var total = capital //для удобсва
        let monthlyRate = 1.0 + interestRate / Double(periodsPerYear)
        
        for _ in 1..<totalPeriods {
            total *= monthlyRate
            total += monthlyDeposit
        }
        
        return total
    }

 
}
