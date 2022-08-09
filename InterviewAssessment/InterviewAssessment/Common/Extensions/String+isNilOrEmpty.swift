//
//  String+isNilOrEmpty.swift
//  InterviewAssessment
//
//  Created by Volodymyr Ilkiv on 08.08.2022.
//

import Foundation

extension Optional where Wrapped == String {
    var isNilOrEmpty: Bool {
        guard let string = self, !string.isEmpty else {
            return true
        }
        return false
    }
}
