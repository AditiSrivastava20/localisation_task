//
//  ViewController.swift
//  Localization
//
//  Created by Sierra 4 on 01/03/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Localize_Swift

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
  
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text1: UITextField!
    var language: String?
      override func viewDidLoad() {
        super.viewDidLoad()
        //text1.text = NSLocalizedString("first", comment: "this is a demo")
       // text2.text = NSLocalizedString("second", comment: "this is a demo")
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SegmentAction(_ sender: Any) {
        if(segmentControl.selectedSegmentIndex == 0)
        {
            Localize.setCurrentLanguage("en")
            English()
            
        }
        else if(segmentControl.selectedSegmentIndex == 1)
        {
            
             Localize.setCurrentLanguage("ar")
            Arabic()
            

        }
        
    }
    
    func English()
    {
        text1.text = "first".localized()
        text2.text = "second".localized()
        text1.textAlignment = .left
        text2.textAlignment = .left
    }
    func Arabic(){
        text1.textAlignment = .right
        text2.textAlignment = .right
        
        text1.text = "first".localized()
        text2.text="second".localized()
       
    }
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

