//
//  ElementKind.swift
//  WebBase
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

open class ElementKind: Element {
    public init(
        name: String? = nil,
        contents: String? = nil,
        attributes: [Attribute]? = nil,
        _ children: [Element]? = nil
    ) {
        super.init(
            name: name,
            contents: contents,
            attributes: attributes,
            children
        )
    }

    public convenience init(
        name: String? = nil,
        contents: String? = nil,
        attributes: [Attribute]? = nil,
        _ child: Element
    ) {
        self.init(
            name: name,
            contents: contents,
            attributes: attributes,
            [child]
        )
    }

    public convenience init(
        name: String? = nil,
        contents: String? = nil,
        attributes: [Attribute]? = nil,
        @ElementBuilder _ builder: () -> Element
    ) {
        self.init(
            name: name,
            contents: contents,
            attributes: attributes,
            [builder()]
        )
    }

    public convenience init(_ contents: String) {
        self.init(contents: contents)
    }
}
