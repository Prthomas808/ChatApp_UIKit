//
//  LoginVC.swift
//  ChatApp
//
//  Created by Pedro Thomas on 2/9/24.
//

import UIKit

class LoginVC: UIViewController {

    // MARK: Properties
    let logoImage = ReusableSystemImage(systemImage: "bubble.right", preferMultiColor: false, color: .systemTeal, height: 125, width: 125)
    let taskLabel = ReusableLabel(text: "Log In", fontSize: 18, weight: .bold, color: .label, numberOfLines: 0)
    let instructionsLabel = ReusableLabel(text: "Enter Your Information Below", fontSize: 15, weight: .light, color: .label, numberOfLines: 0)
    
    let emailTextfield = ReusableTextfield(placeholder: "E-Mail Address", keyboardType: .emailAddress, isSecure: false, height: 45, width: UIScreen.main.bounds.width / 1.2)
    let passwordTextfield = ReusableTextfield(placeholder: "Password", keyboardType: .asciiCapable, isSecure: true, height: 45, width: UIScreen.main.bounds.width / 1.2)
    let loginButton = ReusableButton(buttonTitle: "Log In", textColor: .systemGray6, buttonColor: .systemTeal, height: 45, width: UIScreen.main.bounds.width / 1.2)
    let forgotPasswordButton = ReusableLabel(text: "Forgot Password?", fontSize: 14, weight: .regular, color: .label, numberOfLines: 0)
    
    let createAccountLabel = ReusableLabel(text: "New Here?", fontSize: 15, weight: .regular, color: .label, numberOfLines: 0)
    let signUpButton = ReusableLabel(text: "Sign Up", fontSize: 15, weight: .regular, color: .systemTeal, numberOfLines: 0)
    
    
    // MARK: Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureHeaderView()
        configureLogInProperties()
        configureFooterView()
    }
    
    // MARK: Objc Functions
    
    
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
        view.addSubview(emailTextfield)
        view.addSubview(passwordTextfield)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        
        NSLayoutConstraint.activate([
            emailTextfield.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20),
            emailTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            passwordTextfield.topAnchor.constraint(equalTo: emailTextfield.bottomAnchor, constant: 15),
            passwordTextfield.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextfield.bottomAnchor, constant: 15),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    private func configureFooterView() {
        view.addSubview(createAccountLabel)
        view.addSubview(signUpButton)
        
        NSLayoutConstraint.activate([
            createAccountLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            createAccountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -30),
            
            signUpButton.centerYAnchor.constraint(equalTo: createAccountLabel.centerYAnchor),
            signUpButton.leadingAnchor.constraint(equalTo: createAccountLabel.trailingAnchor, constant: 5)
        ])
    }
}
