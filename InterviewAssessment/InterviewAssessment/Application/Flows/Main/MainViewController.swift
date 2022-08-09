//
//  ViewController.swift
//  InterviewAssessment
//
//  Created by Volodymyr Ilkiv on 08.08.2022.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - IBActions
    @IBAction private func textParsingButtonTapped(_ sender: UIButton) {
        let textParsingViewController = TextParsingViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(textParsingViewController, animated: true)
    }

    @IBAction private func bitManipulationButtonTapped(_ sender: UIButton) {
        let bitManipulationViewController = BitManipulationViewController.instantiateFromStoryboard()
        self.navigationController?.pushViewController(bitManipulationViewController, animated: true)
    }
}

