//
//  Document.swift
//  WebBase
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

public struct Document {
    public enum Kind {
        case unspecified
        case html
        case xml
        case custom(String)
    }

    public let type: Kind
    public let root: Element

    public init(_ type: Kind = .unspecified, @ElementBuilder _ builder: () -> Element) {
        self.type = type
        self.root = builder()
    }
}
