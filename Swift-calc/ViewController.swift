//
//  ViewController.swift
//  Swift-calc
//
//  Created by Dylan Kelly on 5/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var timesBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var divideBtn: UIButton!
    
    
    var mathHandler = MathHandler()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func oneBtnClick(_ sender: Any) {
        //text is already set warning error handled
        let numStr = oneBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func twoBtnClick(_ sender: Any) {
        let numStr = twoBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    @IBAction func threeBtnClick(_ sender: Any) {
        let numStr = threeBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func fourBtnClick(_ sender: Any) {
        let numStr = fourBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func fiveBtnClick(_ sender: Any) {
        let numStr = fiveBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func sixBtnClick(_ sender: Any) {
        let numStr = sixBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func sevenBtnClick(_ sender: Any) {
        let numStr = sevenBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func eightBtnClick(_ sender: Any) {
        let numStr = eightBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func nineBtnClick(_ sender: Any) {
        let numStr = nineBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func zeroBtnClick(_ sender: Any) {
        let numStr = zeroBtn.currentTitle!
        mathHandler.addToVar(num: numStr)
        mainLabel.text = mathHandler.getVar()
    }
    
    
    @IBAction func clearBtn(_ sender: Any) {
        mathHandler.clear()
        mainLabel.text = "00000"
    }
    
    @IBAction func addBtnClick(_ sender: Any) {
        mathHandler.setSign(sign: "+")
       
    }
    
    
    @IBAction func minusBtnClick(_ sender: Any) {
        mathHandler.setSign(sign: "-")
        
    }
    
    
    @IBAction func multiplicationBtbClick(_ sender: Any) {
        mathHandler.setSign(sign: "x")
       
    }
    
    @IBAction func divisionBtnClick(_ sender: Any) {
        mathHandler.setSign(sign: "/")
        
    }
    
    
    @IBAction func equalsBtnClick(_ sender: Any) {
        let result: Int = mathHandler.calculate()
        let resultStr: String = String(result)
        mainLabel.text = resultStr
    }
    
}

