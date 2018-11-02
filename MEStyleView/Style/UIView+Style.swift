//
//  UIView+Style.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

/**
 - author: VietHQ
 */
extension UIView {
    private struct AssociatedKeys {
        static var style: UInt8 = 0
    }
    
    // define style
    static var styleManager: StyleManager?
    
    func applyStyle(style: StyleCompose<UIView>) {
        style.apply(to: self)
    }
    
    // using class name to define style
    @IBInspectable public var style: String? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.style) as? String
        }
        
        set(value) {
            objc_setAssociatedObject(self, &AssociatedKeys.style, value, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            UIView.styleManager?.apply(component: self)
        }
    }
}
