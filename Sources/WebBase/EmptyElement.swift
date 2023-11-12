//
//  EmptyElement.swift
//  WebBase
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

open class EmptyElement: ElementKind {
    override open class var kind: Kind? { .empty }
}
