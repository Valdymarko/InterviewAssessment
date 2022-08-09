//
//  TextParsingViewController.swift
//  InterviewAssessment
//
//  Created by Volodymyr Ilkiv on 08.08.2022.
//

import UIKit

final class TextParsingViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var textResultLabel: UILabel!
    
    // MARK: - Private properties
    private var wordsDictionary: [String] = ["meat", "carrot", "show", "pan", "chair", "laptop"]
    
    // MARK: - Private methods
    private func parse(inputText: String) -> String? {
        if wordsDictionary.contains(inputText) {
            return inputText
        }
        
        for (index, _) in inputText.enumerated() {
            let prefix = String(inputText.prefix(index))
            
            if wordsDictionary.contains(prefix) {
                
                let suffix = inputText.subString(from: index, to: inputText.count)
                let segSuffix = parse(inputText: suffix)
                
                if segSuffix != nil {
                    return prefix + " " + segSuffix!
                }
            }
        }
        return nil
    }
    
    // MARK: - IBAction
    @IBAction private func parseButtonTapped(_ sender: UIButton) {
        guard !textField.text.isNilOrEmpty else {
            return
        }
        textResultLabel.text = parse(inputText: textField.text!)
    }
}
