//
//  StyleCompose.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import UIKit

struct StyleCompose<T: UIView> {
    var styling: (T) -> Void
    func apply(to view: T) {
       self.styling(view)
    }
    
    func compose(styles: StyleCompose...) -> StyleCompose {
        return StyleCompose { view in
            for style in styles {
                style.styling(view)
            }
        }
    }
    
    static func + (lhs: StyleCompose, rhs: StyleCompose) -> StyleCompose {
        return StyleCompose { view in
            lhs.styling(view)
            rhs.styling(view)
        }
    }
}


