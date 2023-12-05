//
//  PersonalInfoViewController.swift
//  OurDallas
//
//  Created by Rafe Forward on 11/27/23.
//

import UIKit
struct PersonalInfo: Codable {
    var firstName: String
    var lastName: String
    var email: String
    var phoneNumber: String
}
class PersonalInfoViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        let textView = UITextView()

        textView.layer.shadowOffset = CGSize(width: 3, height: 3)

        textView.layer.shadowRadius = 10
        view.addSubview(textView)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func saveButtonTapped(_ sender: UIButton) {
            // Save the information
        guard let email = emailTextField.text, isValidEmail(email) else {
                // Show an error alert if the email is not valid
                showAlert(message: "Please enter a valid email address.")
                return
            }
        
        
        let info = PersonalInfo(firstName: firstNameTextField.text ?? "",
                                    lastName: lastNameTextField.text ?? "",
                                    email: email,
                                    phoneNumber: phoneNumberTextField.text ?? "")
            UserDefaults.standard.set(try? PropertyListEncoder().encode(info), forKey: "personalInfo")
    }
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    func isValidPhoneNumber(_ number: String) -> Bool {
        let numberRegEx = "^[0-9+]{0,1}+[0-9]{5,16}$"
        let numberTest = NSPredicate(format: "SELF MATCHES %@", numberRegEx)
        return numberTest.evaluate(with: number)
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    /*
    // MARK: - Navigation
    */

}
