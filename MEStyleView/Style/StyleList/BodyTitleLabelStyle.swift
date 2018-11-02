//
//  BodyTitleLabelStyle.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

class BodyTitleLabelStyle: Style {
    private let font: UIFont
    private let textColor: UIColor
    private let textAlign: NSTextAlignment
    private let line: Int
    
    init(font: UIFont, textColor: UIColor, textAlign: NSTextAlignment = .center, line: Int = 0) {
        self.font = font
        self.textColor = textColor
        self.textAlign = textAlign
        self.line = line
    }
    
    // MARK: Style method
    func getId() -> String {
        return String(describing: BodyTitleLabelStyle.self)
    }
    
    func apply<T: UIView>(_ component: T) {
        guard let lbl = component as? UILabel else {
            fatalError("\(component) is not a uilable")
        }
        
        lbl.textColor = textColor
        lbl.font = font
        lbl.textAlignment = textAlign
        lbl.numberOfLines = line
    }
}
