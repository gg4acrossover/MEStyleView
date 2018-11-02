//
//  StyleMapRegister.swift
//  MEStyleView
//
//  Created by viethq on 11/1/18.
//  Copyright © 2018 viethq. All rights reserved.
//

import Foundation

protocol StyleMapRegister {
    func getStyle(by id: String) -> Style?
}
