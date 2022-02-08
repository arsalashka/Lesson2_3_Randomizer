//
//  ViewController.swift
//  Lesson2_3_Randomizer
//
//  Created by Arsalan Balzhinimaev on 08.02.2022.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var minLabel: UILabel!
	@IBOutlet var maxLabel: UILabel!
	@IBOutlet var resultLabel: UILabel!

	@IBOutlet var getResultButton: UIButton!

	override func viewDidLoad() {
		super.viewDidLoad()

		getResultButton.layer.cornerRadius = 10
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//		print("!")
		guard let settingsVC = segue.destination as? SettingsViewController else { return }
		settingsVC.minValue = minLabel.text
		settingsVC.maxValue = maxLabel.text
	}

	@IBAction func getResultButtonPressed() {

		let minValue = Int(minLabel.text ?? "") ?? 0
		let maxValue = Int(maxLabel.text ?? "") ?? 100

		resultLabel.text = String(Int.random(in: minValue...maxValue))
	}

	@IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
		guard let settingsVC = unwindSegue.source as? SettingsViewController else { return }
		minLabel.text = settingsVC.minValueTF.text
		maxLabel.text = settingsVC.maxValueTF.text

	}
}

