//
//  BitManipulationViewController.swift
//  InterviewAssessment
//
//  Created by Volodymyr Ilkiv on 08.08.2022.
//

import UIKit

final class BitManipulationViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var xTextField: UITextField!
    @IBOutlet private weak var yTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    // MARK: - Private methods
    private func bitManipulation(x: Int, y: Int) -> Int {
        var count = 0
        var result = x^y
        
        while result > 0 {
            count += 1
            result &= (result - 1)
        }
        
        return count
    }
    
    // MARK: - IBAction
    @IBAction private func calculateButtonTapped(_ sender: UIButton) {
        guard !xTextField.text.isNilOrEmpty, !yTextField.text.isNilOrEmpty,
              let x = Int(xTextField.text!),
              let y = Int(yTextField.text!) else {
            return
        }
        let flipsCount = bitManipulation(x: x, y: y)
        
        resultLabel.text = "\(flipsCount)"
    }
}
