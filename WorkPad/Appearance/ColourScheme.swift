//
//  ColourScheme.swift
//  WorkPod
//
//  Created by Amy Ha on 16/05/2020.
//  Copyright © 2020 Amy Ha. All rights reserved.
//

import Foundation
import UIKit

enum Color {
    case background
    case whiteFont
}

extension Color {
    var color: UIColor {
        var instanceColor = UIColor.clear
        
        switch self {
        case .background:
            instanceColor = UIColor(hexString: "#A8A4A4")
        case .whiteFont:
            instanceColor = UIColor(hexString: "#FFFFFF")
        
        }
        return instanceColor
    }
}

