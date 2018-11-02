//
//  StyleManager.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

class StyleManager {
    private var register: StyleMapRegister
    required init(register: StyleMapRegister) {
        self.register = register
    }
    
    private func getStyleId(component: UIView) -> String? {
        return component.style
    }
    
    func apply(component: UIView) {
        guard let styleID = self.getStyleId(component: component) else {
            return
        }
        
        let style = self.register.getStyle(by: styleID)
        style?.apply(component)
    }
}
