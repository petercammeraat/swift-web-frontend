//
//  Br.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The `<br>` HTML element produces a line break in text (carriage-return). It is useful for writing a poem or an address, where the division of lines is significant.
///
/// For more information, see [br docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/br)
open class Br: EmptyElement {
    override open class var name: String { .init(describing: Br.self).lowercased() }
}
