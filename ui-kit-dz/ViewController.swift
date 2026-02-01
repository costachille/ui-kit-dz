//
//  ViewController.swift
//  ui-kit-dz
//
//  Created by Konstantin Popov on 01.02.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Начальное значениие счетчика
        updateCounterDisplay(value: 0)
    }

    private var currentValue = 0
    
    @IBAction func increaseTapped(_ sender: Any) {
        currentValue += 1
        updateCounterDisplay(value: currentValue)
    }
    
    @IBAction func decreaseTapped(_ sender: Any) {
        currentValue -= 1
        updateCounterDisplay(value: currentValue)
    }
    
    private func updateCounterDisplay(value: Int) {
        counterLabel.text = String(value)
    }
}
