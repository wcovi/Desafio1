//
//  ViewController.swift
//  Desafio1
//
//  Created by Wolfgang Florian Covi on 27/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBAction func registerSuccess(_ sender: Any) {
        print("Cadastro realizado com sucesso")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureComponents()
    }
    
    func configureComponents() {
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.red.cgColor
        addressTextField.layer.borderWidth = 2
        addressTextField.layer.borderColor = UIColor.red.cgColor
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.red.cgColor
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        registerButton.isEnabled = false
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if nameTextField.text != "" && addressTextField.text != "" && passwordTextField.text != ""  {
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
            }
        }
}
