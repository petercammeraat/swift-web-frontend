//
//  Bdo.swift
//  WebHtml
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat

/// The `<bdo>` HTML element overrides the current directionality of text, so that the text within is rendered in a different direction.
///
/// For more information, see [bdo docs](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/bdo)
open class Bdo: StandardElement {
    override open class var name: String { .init(describing: Bdo.self).lowercased() }
    
    public init(_ contents: String, dir: Dir = .ltr) {
        super.init()
        self.setContents(contents)
        self.setAttributes([
            .init(key: "dir", value: dir.rawValue)
        ])
    }
}
