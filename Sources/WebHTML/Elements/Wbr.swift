//
//  Wbr.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<wbr>` HTML element represents a word break opportunity—a position within text where the browser may optionally break a line, though its line-breaking rules would not otherwise create a break at that location.
///
/// For more information, see [wbr docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/wbr)
open class Wbr: StandardElement {
    override open class var name: String { .init(describing: Wbr.self).lowercased() }
}
