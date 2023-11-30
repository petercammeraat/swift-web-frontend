//
//  Double.swift
//  WebSVG
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

extension Double {
    var preciseString: String {
        if self - Double(Int(self)) == 0 {
            return String(Int(self))
        }
        return String(self)
    }
}
