//
//  Attribute.swift
//  WebBase
//  BSD 3-Clause License
//  Copyright 2023 Peter Cammeraat
//

public struct Attribute {
    public var key: String
    public var value: String?

    public init(key: String, value: String? = nil) {
        self.key = key
        self.value = value
    }
}
