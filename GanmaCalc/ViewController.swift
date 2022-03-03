//
//  ViewController.swift
//  GanmaCalc
//
//  Created by shinya on 2022/03/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weigthTextField: UITextField!
    @IBOutlet weak var ganmaTextField: UITextField!
    @IBOutlet weak var resultRyuryo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        weigthTextField.placeholder = "Kg"
        ganmaTextField.placeholder = "γ"
    }

    @IBAction func ganmaCalc(_ sender: Any) {
            let doubleW = Double(weigthTextField.text!)
            let doubleG = Double(ganmaTextField.text!)
        resultRyuryo.text = calculation(weight: doubleW!, ganma: doubleG!)
        }
    }
    
    func calculation(weight: Double, ganma: Double) -> String {
        let w = weight
        let g = ganma
        var result = w + g
        result = floor(result * 10) / 10

        return result.description
    }
    
    


