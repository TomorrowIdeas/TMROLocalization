//
//  NSMutableAttributedString.swift
//  TMROLocalization
//
//  Created by Benji Dodgson on 11/15/19.
//  Copyright © 2019 Tomorrow Ideas. All rights reserved.
//

import Foundation

extension NSMutableAttributedString {

    func replace(arguments: [String]) {
        // pattern matches letters, spaces, apostrophes, underscores & hyphens; between an openning & closing paranthesis, starting with an @ symbol
        // e.g. @(this matches) @(this_matches-too)  @(but&NOT*punctuation!)
        guard let regex = try? NSRegularExpression(pattern: "@\\([\\w\\s'_-]*\\)",
                                                   options: .caseInsensitive) else { return }
        let nsString = self.string as NSString
        let matchRanges = regex.matches(in: self.string,
                                        range: NSRange(location: 0, length: nsString.length))
        for (index, range) in matchRanges.reversed().enumerated() {
            guard let argument = arguments.reversed()[safe: index] else { continue }
            self.mutableString.replaceCharacters(in: range.range, with: argument)
        }
    }
}

