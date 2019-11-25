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
        guard let regex = try? NSRegularExpression(pattern: "@\\([a-z]*\\)",
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

