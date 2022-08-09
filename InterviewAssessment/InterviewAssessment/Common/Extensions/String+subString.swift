//
//  String+subString.swift
//  InterviewAssessment
//
//  Created by Volodymyr Ilkiv on 08.08.2022.
//

import Foundation

extension String {
    func subString(from: Int, to: Int) -> String {
       let startIndex = self.index(self.startIndex, offsetBy: from)
       let endIndex = self.index(self.startIndex, offsetBy: to)
       return String(self[startIndex..<endIndex])
    }
}
