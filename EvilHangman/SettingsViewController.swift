//
//  SettingsViewController.swift
//  EvilHangman
//
//  Created by Ewoud Hermans on 01/12/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var sequeInt = 0
    
    let savedWordLength = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLengthValue.text = String(savedWordLength.integerForKey("myInt"))
        wordLength.value = Float(savedWordLength.integerForKey("myInt"))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var wordLength: UISlider!
    
    @IBOutlet weak var wordLengthValue: UILabel!
    
    var selectedValue: Int = 0
    
    @IBAction func valueChanged(sender: UISlider) {
        
        
        
        selectedValue = Int(sender.value)

        savedWordLength.setInteger(selectedValue, forKey: "myInt")
        
        let ourInt = savedWordLength.integerForKey("myInt")
        
        sequeInt = ourInt
        
        wordLengthValue.text = String(ourInt)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destinationViewControler = segue.destinationViewController as! PlayViewController
        
        destinationViewControler.selectedValue2 = selectedValue
    }
}
