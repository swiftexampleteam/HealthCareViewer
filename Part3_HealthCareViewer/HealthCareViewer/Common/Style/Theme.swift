//
//  Theme.swift
//  HealthCareViewer
//
//  Created by MACOS on 10/19/18.
//  Copyright © 2018 MACOS. All rights reserved.
//

import UIKit

public class Theme {
    public static var shared = Theme()
    
    private init() {}
    
    //MARK: Color
    
    public var primaryColor: UIColor {
        return #colorLiteral(red: 0, green: 0.3313085437, blue: 0.7222445011, alpha: 1)
    }
    
    var secondaryColor: UIColor {
        return #colorLiteral(red: 0, green: 0.7506982088, blue: 0.6462552547, alpha: 1)
    }
    
    var accentColor: UIColor {
        return #colorLiteral(red: 0.9631381631, green: 0.3095718622, blue: 0.3006241322, alpha: 1)
    }
    
    //MARK: Background
    var defaultBGColor: UIColor {
        return #colorLiteral(red: 0.9998916984, green: 1, blue: 0.9998808503, alpha: 1)
    }
    
    var darkBGColor: UIColor {
        return #colorLiteral(red: 0.9802858233, green: 0.9804534316, blue: 0.9802753329, alpha: 1)
    }
    
    var transparentColor: UIColor {
        return #colorLiteral(red: 0.9901960784, green: 1, blue: 1, alpha: 0)
    }
    
    var alertBGColor: UIColor {
        return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).withAlphaComponent(0.45)
    }
    
    var disableButtonColor: UIColor {
        return #colorLiteral(red: 0.741094768, green: 0.7412236333, blue: 0.7410866618, alpha: 1)
    }
    
    var lightNavigationBarColor: UIColor {
        return #colorLiteral(red: 0.9606800675, green: 0.9608444571, blue: 0.9606696963, alpha: 1)
    }
    
    var selectedTabBarColor: UIColor {
        return #colorLiteral(red: 0, green: 0.7469342351, blue: 0.6502956152, alpha: 1)
    }
    
    var backgroundColorShadow: UIColor {
        return #colorLiteral(red: 0.4979824424, green: 0.498071909, blue: 0.4979767799, alpha: 1)
    }
    
    var pickerBackgroundColor: UIColor {
        return #colorLiteral(red: 0.9606800675, green: 0.9608443379, blue: 0.9606696963, alpha: 1)
    }
    
    //MARK: TextColor
    var defaultTextColor: UIColor {
        return #colorLiteral(red: 0.9998916984, green: 1, blue: 0.9998808503, alpha: 1)
    }
    
    var darkBlueTextColor: UIColor {
        return #colorLiteral(red: 0.03734998778, green: 0.1605958641, blue: 0.3454464972, alpha: 1)
    }
    
    var lightBlueTextColor: UIColor {
        return #colorLiteral(red: 0.4845794439, green: 0.5440424085, blue: 0.647426188, alpha: 1)
    }
    
    var grayTextColor: UIColor {
        return #colorLiteral(red: 0.6195386052, green: 0.6196478009, blue: 0.6195316911, alpha: 1)
    }
    
    //MARK: Chart
    var diastolicChartColor: UIColor {
        return #colorLiteral(red: 0, green: 0.1668739319, blue: 1, alpha: 1)
    }
    
    var systolicChartColor: UIColor {
        return #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
    }
    
    var heartRateChartColor: UIColor {
        return #colorLiteral(red: 0, green: 0.5081552863, blue: 0.02019247971, alpha: 1)
    }
    
    var resultChartColor: UIColor {
        return #colorLiteral(red: 0.3037468791, green: 0.7357437015, blue: 0.9506803155, alpha: 1)
    }
    
    //MARK: Statistic status
    var lowStatisticColor: UIColor {
        return #colorLiteral(red: 0.3122304678, green: 0.781267941, blue: 0.813952744, alpha: 1)
    }
    
    var normalStatisticColor: UIColor {
        return #colorLiteral(red: 0, green: 0.6427615285, blue: 0.411539793, alpha: 1)
    }
    
    var hightStatisticColor: UIColor {
        return #colorLiteral(red: 1, green: 0.6749714017, blue: 0, alpha: 1)
    }
    
    var veryHightStatisticColor: UIColor {
        return #colorLiteral(red: 0.9476038814, green: 0.2670727074, blue: 0.2843323052, alpha: 1)
    }
    
    //MARK: Other
    var lineDeviderColor: UIColor {
        return #colorLiteral(red: 0.5920904875, green: 0.5921952128, blue: 0.5920838714, alpha: 1)
    }
    
    var lightBlueLineDivider: UIColor {
        return #colorLiteral(red: 0.7926892638, green: 0.8293792009, blue: 0.9021757245, alpha: 1)
    }
    
    //MARK: Message
    var ownerMessageCGColor: UIColor {
        return #colorLiteral(red: 0.4608904719, green: 0.5940192342, blue: 0.8761782646, alpha: 1)
    }
    
    var partnerMessageCGColor: UIColor {
        return #colorLiteral(red: 0.9332318306, green: 0.9333917499, blue: 0.933221817, alpha: 1)
    }
    
    var placeHolderMessageColor: UIColor {
        return #colorLiteral(red: 0.6430656314, green: 0.6431785226, blue: 0.6430584788, alpha: 1)
    }
    
}



