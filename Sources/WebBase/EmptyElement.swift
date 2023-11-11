//
//  EmptyElement.swift
//  WebBase
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat
//

open class EmptyElement: ElementKind {
    override open class var kind: Kind? { .empty }
}
