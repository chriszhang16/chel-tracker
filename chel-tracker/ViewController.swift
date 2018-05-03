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
    @IBOutlet weak var stepperValZhang: UIStepper!
    @IBOutlet weak var stepperValAnderson: UIStepper!
    
    //score steppers
    @IBAction func stepperZhang(_ sender: UIStepper){
        scoreZhang.text = String(sender.value)
        UserDefaults.standard.set(scoreZhang.text, forKey: "zhang")
    }
    @IBAction func stepperAnderson(_ sender: UIStepper){
        scoreAnderson.text = String(sender.value)
        UserDefaults.standard.set(scoreAnderson.text, forKey: "anderson")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if scoreZhang != nil {
            //zhang defaults
            if let zhangToDisplay = UserDefaults.standard.object(forKey: "zhang") as? String {
                stepperValZhang.value = Double(zhangToDisplay)!
                scoreZhang.text = zhangToDisplay
            }
        }
        if scoreAnderson != nil {
            //anderson defaults
            if let andersonToDisplay = UserDefaults.standard.object(forKey: "anderson") as? String {
                stepperValAnderson.value = Double(andersonToDisplay)!
                scoreAnderson.text = andersonToDisplay
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //HELLLOOOOOO
    }
    
    //MARK: Actions
    @IBOutlet weak var reviewScoresButton: UIButton!
    @IBOutlet weak var recentGamesButton: UIButton!
    @IBOutlet weak var seriesStatsButton: UIButton!
    
}

