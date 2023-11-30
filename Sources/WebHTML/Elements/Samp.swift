//
//  Samp.swift
//  WebHTML
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

import WebBase

/// The `<samp>` HTML element is used to enclose inline text which represents sample (or quoted) output from a computer program.
///
/// Its contents are typically rendered using the browser's default monospaced font (such as Courier or Lucida Console).
///
/// For more information, see [samp docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/samp)
open class Samp: StandardElement {
    override open class var name: String { .init(describing: Samp.self).lowercased() }
}
