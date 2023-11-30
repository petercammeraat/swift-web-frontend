//
//  Element+EnterKeyHint.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

import WebBase
public extension Element {
    /// The `enterkeyhint` global attribute is an enumerated attribute defining what action label (or icon) to present for the enter key on virtual keyboards.
    ///
    /// For more information, see [enterkeyhint docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/enterkeyhint)
    @discardableResult
    func enterKeyHint(_ value: EnterKeyHint?, _ condition: Bool = true) -> Self {
        attribute("enterkeyhint", value?.rawValue, condition)
    }
}

public enum EnterKeyHint: String {
    /// Typically inserting a new line.
    case enter
    /// Typically meaning there is nothing more to input and the input method editor (IME) will be closed.
    case done
    /// Typically meaning to take the user to the target of the text they typed.
    case go
    /// Typically taking the user to the next field that will accept text.
    case next
    /// Typically taking the user to the previous field that will accept text.
    case previous
    /// Typically taking the user to the results of searching for the text they have typed.
    case search
    /// Typically delivering the text to its target.
    case send
}
