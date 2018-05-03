//
//  ViewController.swift
//  chel-tracker
//
//  Created by Chris Zhang on 2/3/18.
//  Copyright © 2018 Chris Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //score labels
    @IBOutlet weak var scoreZhang: UILabel!
    @IBOutlet weak var scoreAnderson: UILabel!
    
    //score steppers
    @IBAction func stepperZhang(_ sender: UIStepper){
        scoreZhang.text = String(sender.value)
    }
    @IBAction func stepperAnderson(_ sender: UIStepper){
        scoreAnderson.text = String(sender.value)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //HELLLOOOOOO
    }
    
    //MARK: Actions
    @IBOutlet weak var reviewScoresButton: UIButton!
    
}

