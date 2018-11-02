//
//  Style.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

protocol Style {
    func getId() -> String
    func apply<T: UIView>(_ component: T)
}

extension Style where Self: UIView {
    func getId() -> String {
        return String(describing: self)
    }
}
