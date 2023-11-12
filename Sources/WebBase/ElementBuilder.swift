//
//  ElementBuilder.swift
//  WebBase
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

@resultBuilder
public enum ElementBuilder {
    public static func buildBlock() -> Element {
        Element()
    }

    public static func buildBlock(_ components: [Element]...) -> Element {
        Element(components.flatMap { $0 })
    }

    public static func buildBlock(_ components: Element...) -> Element {
        Element(components)
    }

    public static func buildOptional(_ component: Element?) -> Element {
        component ?? Element()
    }

    public static func buildEither(first component: Element) -> Element {
        component
    }

    public static func buildEither(second component: Element) -> Element {
        component
    }

    public static func buildArray(_ components: [Element]) -> Element {
        Element(components)
    }
}
