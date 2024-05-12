//
//  HomepageViewModel.swift
//  MVVMusage
//
//  Created by Kaan Uzun on 12.05.2024.
//

import Foundation
import RxSwift

class HomepageViewModel {
    
    var result = BehaviorSubject<String>(value: "0")
    var mRepo = MathRepository()
    
    init(){
        result = mRepo.result
    }
    
    func addition(selectedNumber1:String, selectedNumber2:String){
        mRepo.addition(
            selectedNumber1: selectedNumber1,
            selectedNumber2: selectedNumber2
        )
    }
    
    
    func multiplication(selectedNumber1:String, selectedNumber2:String){
        mRepo.multiplication(
            selectedNumber1: selectedNumber1,
            selectedNumber2: selectedNumber2
        )
    }
}
