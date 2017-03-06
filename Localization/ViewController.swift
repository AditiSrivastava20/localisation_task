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
   
      override func viewDidLoad() {
        super.viewDidLoad()
        //Localize.setCurrentLanguage("en")
        
      
    }

    
    
    
    @IBAction func SegmentAction(_ sender: Any) {
        
        let language =  Languages(rawValue: (sender as AnyObject).selectedSegmentIndex) ?? .english
        reloadLayout(withLanguage:language)
 
        
    }
    
    fileprivate func reloadLayout(withLanguage language : Languages){
        
        text1.text = "first".localized()
        text2.text = "second".localized()
       
        text1.textAlignment = language.orientation
        text2.textAlignment = language.orientation
       
        Localize.setCurrentLanguage(language.code)
        
    }
    
    
    
}

        /*if
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
    }*/


