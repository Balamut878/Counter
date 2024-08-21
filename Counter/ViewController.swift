//
//  ViewController.swift
//  Counter
//
//  Created by Александр Дудченко on 17.08.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonPlus: UIButton!
    
    @IBOutlet weak var valueCounter: UILabel!
    
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    // Устанавливаю значение счётчика!
    private var counter: Int = 0
    @IBOutlet weak var windowText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Настройка интерфейса!
        valueCounter.text = "Значение счётчика: \(counter)"
        windowText.isEditable = false
        windowText.text = "История изменений:"
    }
    // Прописываю логику кнопки + !
    @IBAction func buttonPlus(_sender: UIButton) {
        counter += 1
        valueCounter.text = "Значение счётчика: \(counter)"
        windowHistory("Значение изменено на +1")
    }
    // Прописываю логику кнопки сброса счётчика
    @IBAction func buttonReset (_sender: UIButton) {
        counter = 0
        valueCounter.text = "Значение счётчика: \(counter)"
        windowHistory("Значение сброшено")
    }
    // Прописываю логику кнопки - !
    @IBAction func buttonMinus (_sender: UIButton) {
        if counter > 0 {
            counter -= 1
            valueCounter.text = "Значение счётчика: \(counter)"
            windowHistory("Значение изменено на -1")
        }  else {
            windowHistory("Попытка уменьшить значение счётчика ниже 0")
            
        }
    }
    // Прописываю логику экрана с текстом!
    private func windowHistory(_ change: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let date = dateFormatter.string(from: Date())
        let newEntry = "\n[\(date)]: \(change)"
        windowText.text += newEntry
        // Скролинг
        let bottom = NSMakeRange(windowText.text.count - 1, 1)
        windowText.scrollRangeToVisible(bottom)
        
    }
}


