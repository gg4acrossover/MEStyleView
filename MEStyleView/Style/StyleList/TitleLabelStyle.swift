//
//  LabelStyle.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

class TitleLabelStyle: Style {
    private let font: UIFont
    private let textColor: UIColor
    private let textAlign: NSTextAlignment
    
    init(font: UIFont, textColor: UIColor, textAlign: NSTextAlignment = .center) {
        self.font = font
        self.textColor = textColor
        self.textAlign = textAlign
    }
    
    // MARK: Style method
    func getId() -> String {
        return String(describing: TitleLabelStyle.self)
    }
    
    func apply<T: UIView>(_ component: T) {
        guard let lbl = component as? UILabel else {
            fatalError("\(component) is not a uilable")
        }
        
        lbl.textColor = textColor
        lbl.font = font
        lbl.textAlignment = textAlign
    }
}
