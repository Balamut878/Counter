//
//  ViewController.swift
//  Counter
//
//  Created by Александр Дудченко on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ставлю счётчик
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    @IBAction func incrementCounter(_sender: UIButton) {
            counter += 1
            counterLabel.text = "Значение счётчика: \(counter)"
        }


}

