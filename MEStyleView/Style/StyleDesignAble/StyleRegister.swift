//
//  StyleRegister.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

/**
 - define style by StyleCompose struct
 - author: VietHQ
 */
enum StyleRegister {
    static let titleBoldStyle = StyleCompose { (view) in
        guard let lbl = view as? UILabel else { return }
        
        lbl.font = UIFont.boldSystemFont(ofSize: 14)
    }
    
    static let greenBackgroundStyle = StyleCompose { (view) in
        view.backgroundColor = .green
    }
    
    static let thinBorderStyle = StyleCompose { (view) in
        view.layer.borderWidth = 0.4
    }
    
    static let centerAlignStyle = StyleCompose { (view) in
        guard let lbl = view as? UILabel else { return }
        
        lbl.textAlignment = .center
    }
    
    static let titleStyle = titleBoldStyle + greenBackgroundStyle + thinBorderStyle + centerAlignStyle
}
