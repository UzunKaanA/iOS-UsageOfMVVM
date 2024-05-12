//
//  MathRepository.swift
//  MVVMusage
//
//  Created by Kaan Uzun on 12.05.2024.
//

import Foundation
import RxSwift

class MathRepository {
    
    var result = BehaviorSubject<String>(value: "0")
    
    func addition(selectedNumber1:String, selectedNumber2:String){
        if let number1 = Int(selectedNumber1),let number2 = Int(selectedNumber2){
            let addition = number1 + number2
            result.onNext(String(addition))//Triggering
        }
    }
    
    func multiplication(selectedNumber1:String, selectedNumber2:String){
        if let number1 = Int(selectedNumber1),let number2 = Int(selectedNumber2){
            let multiplication = number1 * number2
            result.onNext(String(multiplication))//Triggering
        }
    }
}
