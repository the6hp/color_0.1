//
//  MainViewController.swift
//  color
//
//  Created by Alexander Penkov on 05.06.2020.
//  Copyright © 2020 Alexander Penkov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBOutlet weak var wTextField: UITextField!
    @IBOutlet weak var hTextField: UITextField!
    
    @IBAction func buttonPush(_ sender: Any) {
        start()
    }
    
    
    func start () {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        var a = Int(wTextField.text!)
        var b = Int(hTextField.text!)
        settlement(a: a!, b: b!, w: Int(screenWidth), h: Int(screenHeight-100))
        variables.startNumberColor = 0
        variables.colorTapEnd == []
        variables.colorTapStart == []
        startArray()
    }
    
}
