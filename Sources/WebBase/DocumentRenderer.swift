//
//  DocumentRenderer.swift
//  WebBase
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

public struct DocumentRenderer {
    private let newline: String
    public let minify: Bool
    public let indent: Int

    public init(minify: Bool = false, indent: Int = 4) {
        self.minify = minify
        self.indent = minify ? 0 : indent
        self.newline = minify ? "" : "\n"
    }

    public func render(_ document: Document) -> String {
        renderDocumentType(document.type) + render(element: document.root)
    }

    // MARK: - private render methods

    private func renderDocumentType(_ type: Document.Kind) -> String {
        switch type {
        case .unspecified:
            return ""
        case .html:
            return "<!DOCTYPE html>" + newline
        case .xml:
            return #"<?xml version="1.0" encoding="utf-8" ?>"# + newline
        case let .custom(value):
            return value + newline
        }
    }

    private func render(element: Element, level: Int = 0) -> String {
        let spaces = String(repeating: " ", count: level * indent)
        if let kind = element.kind {
            switch kind {
            case .comment:
                return spaces + "<!-- " + (element.contents ?? "") + " -->"
            case .empty:
                return spaces + renderOpening(element)
            case .standard:
                return spaces + renderOpening(element) + (element.contents ?? "") + renderChildren(element, level: level, spaces: spaces) + renderClosing(element)
            }
        } else {
            var contents = ""
            if let rawValue = element.contents {
                contents = spaces + rawValue
            }
            return contents + renderChildren(element, level: level, spaces: spaces, isGrouped: true)
        }
    }

    private func renderChildren(_ element: Element, level: Int, spaces: String, isGrouped: Bool = false) -> String {
        var newLevel = level + 1
        if isGrouped {
            newLevel = level
        }
        let elementChildren = element.children ?? []
        var children = elementChildren.map { render(element: $0, level: newLevel) }.joined(separator: newline)
        if !children.isEmpty {
            if !isGrouped {
                children = newline + children + newline + spaces
            }
        }
        return children
    }

    private func renderOpening(_ element: Element) -> String {
        let attributes = element.attributes ?? []
        return "<" + element.name + (attributes.isEmpty ? "" : " ") + renderAttributes(attributes) + ">"
    }

    private func renderClosing(_ element: Element) -> String {
        "</" + element.name + ">"
    }

    private func renderAttributes(_ attributes: [Attribute]) -> String {
        attributes.reduce([]) { res, next in
            if let value = next.value {
                return res + [next.key + #"=""# + value + #"""#]
            }
            return res + [next.key]
        }.joined(separator: " ")
    }
}
