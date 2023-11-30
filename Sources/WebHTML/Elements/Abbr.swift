//
//  Abbr.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<abbr>` HTML element represents an abbreviation or acronym. When including an abbreviation or acronym, provide a full expansion of the term in plain text on first use, along with the `<abbr>` to mark up the abbreviation. This informs the user what the abbreviation or acronym means.
/// 
/// For more information, see [abbr docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/abbr)
open class Abbr: StandardElement {
    override open class var name: String { .init(describing: Abbr.self).lowercased() }
}
