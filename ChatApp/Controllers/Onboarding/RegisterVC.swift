//
//  RegisterVC.swift
//  ChatApp
//
//  Created by Pedro Thomas on 2/9/24.
//

import UIKit

class RegisterVC: UIViewController {

    // MARK: Properties
    let logoImage = ReusableSystemImage(systemImage: "bubble.right", preferMultiColor: false, color: .systemTeal, height: 125, width: 125)
    let taskLabel = ReusableLabel(text: "Sign Up", fontSize: 18, weight: .bold, color: .label, numberOfLines: 0)
    let instructionsLabel = ReusableLabel(text: "Enter Your Information Below", fontSize: 15, weight: .light, color: .label, numberOfLines: 0)
    
    let firtNameTextfield = ReusableTextfield(placeholder: "First Name", keyboardType: .asciiCapable, isSecure: false, height: 45, width: UIScreen.main.bounds.width / 1.2)
    let lastNameTextfield = ReusableTextfield(placeholder: "Last Name", keyboardType: .asciiCapable, isSecure: false, height: 45, width: UIScreen.main.bounds.width / 1.2)
    let emailTextfield = ReusableTextfield(placeholder: "E-Mail Address", keyboardType: .emailAddress, isSecure: false, height: 45, width: UIScreen.main.bounds.width / 1.2)
    let passwordTextfield = ReusableTextfield(placeholder: "Password", keyboardType: .asciiCapable, isSecure: true, height: 45, width: UIScreen.main.bounds.width / 1.2)
    let signUpButton = ReusableButton(buttonTitle: "Log In", textColor: .systemGray6, buttonColor: .systemTeal, height: 45, width: UIScreen.main.bounds.width / 1.2)
    
    let haveAnAccountLabel = ReusableLabel(text: "Have An Account?", fontSize: 15, weight: .regular, color: .label, numberOfLines: 0)
    let logInHereButton = ReusableLabel(text: "Log In", fontSize: 15, weight: .regular, color: .systemTeal, numberOfLines: 0)
    
    
    // MARK: Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = true
        configureHeaderView()
        configureLogInProperties()
        configureFooterView()
    }
    
    // MARK: Objc Functions
    @objc func dismissRegisterVC() {
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: Helping Functions
    private func configureHeaderView() {
        view.addSubview(logoImage)
        view.addSubview(taskLabel)
        view.addSubview(instructionsLabel)
        
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            taskLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            taskLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
            
            instructionsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            instructionsLabel.topAnchor.constraint(equalTo: taskLabel.bottomAnchor, constant: 10)
        ])
    }

    private func configureLogInProperties() {
        view.addSubview(firtNameTextfield)
        view.addSubview(lastNameTextfield)
        view.addSubview(emailTextfield)
        view.addSubview(passwordTextfield)
        view.addSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            firtNameTextfield.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20),
            firtNameTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            lastNameTextfield.topAnchor.constraint(equalTo: firtNameTextfield.bottomAnchor, constant: 15),
            lastNameTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            emailTextfield.topAnchor.constraint(equalTo: lastNameTextfield.bottomAnchor, constant: 15),
            emailTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            passwordTextfield.topAnchor.constraint(equalTo: emailTextfield.bottomAnchor, constant: 15),
            passwordTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            signUpButton.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 15),
            signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

        ])
    }
    
    private func configureFooterView() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissRegisterVC))
        
        view.addSubview(haveAnAccountLabel)
        view.addSubview(logInHereButton)
        logInHereButton.isUserInteractionEnabled = true
        logInHereButton.addGestureRecognizer(tap)
        
        NSLayoutConstraint.activate([
            haveAnAccountLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            haveAnAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30),
            
            logInHereButton.centerYAnchor.constraint(equalTo: haveAnAccountLabel.centerYAnchor),
            logInHereButton.leadingAnchor.constraint(equalTo: haveAnAccountLabel.trailingAnchor, constant: 5)
        ])
    }
}
