//
//  Element+InputMode.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase
public extension Element {
    /// The `inputmode` global attribute is an enumerated attribute that hints at the type of data that might be entered by the user while editing the element or its contents. This allows a browser to display an appropriate virtual keyboard.
    ///
    /// For more information, see [inputmode docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/inputmode)
    @discardableResult
    func inputMode(_ value: InputMode?, _ condition: Bool = true) -> Self {
        attribute("inputmode", value?.rawValue, condition)
    }
}

public enum InputMode: String {
    /// No virtual keyboard. For when the page implements its own keyboard input control.
    case none
    /// Standard input keyboard for the user's current locale.
    case text
    /// Fractional numeric input keyboard containing the digits and decimal separator for the user's locale (typically . or ,). 
    ///
    /// Devices may or may not show a minus key (-).
    case decimal
    /// Numeric input keyboard, but only requires the digits 0–9. 
    ///
    /// Devices may or may not show a minus key.
    case numeric
    /// A telephone keypad input, including the digits 0–9, the asterisk (*), and the pound (#) key. 
    ///
    /// Inputs that *require* a telephone number should typically use `<input type="tel">` instead.
    case tel
    /// A virtual keyboard optimized for search input. 
    ///
    /// For instance, the return/submit key may be labeled "Search", along with possible other optimizations. Inputs that require a search query should typically use `<input type="search">` instead.
    case search
    /// A virtual keyboard optimized for entering email addresses.
    ///
    /// Typically includes the @ character as well as other optimizations. Inputs that require email addresses should typically use `<input type="email">` instead.
    case email
    /// A keypad optimized for entering URLs.
    ///
    /// This may have the / key more prominent, for example. Enhanced features could include history access and so on. Inputs that require a URL should typically use <input type="url"> instead.
    case url
}
