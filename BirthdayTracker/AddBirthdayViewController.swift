//
//  ViewController.swift
//  BirthdayTracker
//
//  Created by Stanislav Shut on 07.05.2024.
//

import UIKit
import CoreData

//protocol AddBirthdayViewControllerDelegate {
//    func addBirthdayViewController(_ addBirthdayViewController: AddBirthdayViewController, didAddBirthday birthday: Birthday)
//    
//}


class AddBirthdayViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var birthDatePicker: UIDatePicker!
    
//    var delegate: AddBirthdayViewControllerDelegate?
    
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
        
//        let newBirthday = Birthday(firstName: firstName, lastName: lastName, birthDate: birthdate)
//        print("Создана запись о дне рождения!")
//        print("Имя: \(newBirthday.firstName)")
//        print("Фамилия: \(newBirthday.lastName)")
//        print("День Рождения: \(newBirthday.birthDate)")
//        delegate?.addBirthdayViewController(self, didAddBirthday: newBirthday)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newBirthday = Birthday(context: context)
        newBirthday.firstName = firstName
        newBirthday.lastName = lastName
        newBirthday.birthdate = birthdate as Date?
        newBirthday.birthdayID = UUID().uuidString
        
        if let uniqueId = newBirthday.birthdayID {
            print("birthdayId: \(uniqueId)")
        }
        
        do {
            try context.save()
        } catch let error {
            print("Не удалось сохранить из-за ошибки \(error)")
        }
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}

