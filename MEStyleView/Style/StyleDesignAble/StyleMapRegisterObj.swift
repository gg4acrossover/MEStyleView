//
//  StyleMapRegisterObj.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import Foundation

class StyleMapRegisterObject: StyleMapRegister {
    private let styleDict: [String: Style]
    required init(styles: [Style]) {
        var dict = [String:Style]()
        for iter in styles {
            dict[iter.getId()] = iter
        }
        
        self.styleDict = dict
        
    }
    
    func getStyle(by id: String) -> Style? {
        return self.styleDict[id]
    }
}
