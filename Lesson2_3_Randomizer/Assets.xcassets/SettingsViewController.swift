//
//  SettingsViewController.swift
//  Lesson2_3_Randomizer
//
//  Created by Arsalan Balzhinimaev on 08.02.2022.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBOutlet var minValueTF: UITextField!
	@IBOutlet var maxValueTF: UITextField!

	var minValue: String!
	var maxValue: String!

	override func viewDidLoad() {
        super.viewDidLoad()

		minValueTF.text = minValue
		maxValueTF.text = maxValue
    }
	
	@IBAction func cancelButtonPressed() {
		dismiss(animated: true)
	}
}
