//
//  ViewController.swift
//  MVVMusage
//
//  Created by Kaan Uzun on 12.05.2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var tfNumber1: UITextField!
    
    @IBOutlet weak var tfNumber2: UITextField!
    
    var viewModel = HomepageViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = viewModel.result.subscribe(onNext: { s in
            self.lblResult.text = s //Listening
        })
        
    }
    
    @IBAction func btnAddition(_ sender: Any) {
        if let selectedNumber1 = tfNumber1.text, let selectedNumber2 = tfNumber2.text{
            viewModel.addition(selectedNumber1: selectedNumber1, selectedNumber2: selectedNumber2)
        }
    }
    
    
    
    @IBAction func btnMultiplication(_ sender: Any) {
        if let selectedNumber1 = tfNumber1.text, let selectedNumber2 = tfNumber2.text{
            viewModel.multiplication(selectedNumber1: selectedNumber1, selectedNumber2: selectedNumber2)
        }
    }
    
}
