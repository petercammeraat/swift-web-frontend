//
//  Comment.swift
//  WebHtml
//  The 3-Clause BSD License
//  Copyright 2023 Peter Cammeraat

/// The comment tag is used to insert comments in the source code.
/// 
/// `<!-- example comment -->`
///
/// Browsers do not render comments. Employing comments is a valuable practice for elucidating your code, aiding in future source code revisions. This becomes particularly advantageous when dealing with extensive codebases.
open class Comment: CommentElement {
    override open class var name: String { .init(describing: Comment.self).lowercased() }
    
    public init(_ contents: String) {
        super.init()
        setContents(contents)
    }
}
