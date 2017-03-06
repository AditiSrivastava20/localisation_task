//
//  enumFile.swift
//  Localization
//
//  Created by Sierra 4 on 02/03/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//


import Foundation
import UIKit

enum Languages : Int{
    case arabic
    case english
   
    
    
    var code : String {
        
        switch self {
        case .arabic:
            return "ar"
        case .english :
            return "en"
        default:
            return "en"
        }
        
    }
    
    var orientation : NSTextAlignment {
        
        switch self {
        case .arabic: return .left
            
        default: return .right
        }
        
    }
    
}

