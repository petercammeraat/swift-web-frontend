//
//  Button.swift
//  WebUI
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase
import WebHTML
import WebHTMX

typealias HTMLButton = WebHTML.Button

open class Button: StandardElement {
    func create() -> StandardElement {
        HTMLButton("Test")
            .type(.button)
    }
}
