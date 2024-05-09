//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Stanislav Shut on 07.05.2024.
//

import UIKit

class AddBirthdayViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        birthDatePicker.maximumDate = Date()
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        // print("Нажата кнопка сохранения.")
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        // print("Меня зовут \(firstName) \(lastName).")
        let birthdate = birthDatePicker.date
        // print("Мой день рождения \(birthdate)")
        
        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthDate: birthdate)
        print("Создана запись о дне рождения!")
        print("Имя: \(newBirthday.firstName)")
        print("Фамилия: \(newBirthday.lastName)")
        print("День Рождения: \(newBirthday.birthDate)")
    }
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}

