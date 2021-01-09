//
//  Constant.swift
//  202010109
//
//  Created by PCS183 on 09/01/21.
//

import Foundation
import UIKit

/// AppLabelType: Enum used to identify the label type
enum AppLabelType {
    case labelTitle
    case labelDetail
    case labelInfo
    
    var appFont: UIFont {
        switch self {
        case .labelTitle:
            return UIFont.boldSystemFont(ofSize: 20)
        case .labelDetail:
            return UIFont.systemFont(ofSize: 18)
        case .labelInfo:
            return UIFont.systemFont(ofSize: 16)
        }
    }
}

extension UIColor {
    struct AppColor {
        let lightGradient = UIColor().hexStringToUIColor(hex: "#FFFFFF")
        let darkGradient = UIColor().hexStringToUIColor(hex: "#AAAAAA")
    }
    
    /// hexStringToUIColor: Call this method to convert hexstring to UIColor
    /// - Parameter hex: String
    /// - Returns: UIColor
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
