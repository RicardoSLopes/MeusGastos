//
//  LoginView.swift
//  MeusGastos
//
//  Created by Ricardo Santana on 03/05/22.
//

import UIKit

class LoginView: UIView {
    
    //MARK: Elements Visual
    
    let titleLabel = LabelDefault(text: "Login", font: UIFont.systemFont(ofSize: 25, weight: .semibold))
    let emailLabel =  LabelDefault(text: "Email")
    
    let emailTextField = TextFieldDefault(placeHolder: "Informe seu email", keyBoardType: .emailAddress)
    let passwordLabel = LabelDefault(text: "Senha")
    let passwordTextField = TextFieldDefault(placeHolder: "informe sua senha")

    //MARK: Button Default
    let buttonLogin = ButtonDefault(title: "Entrar")
    let buttonRegister = ButtonDefault(title: "Registrar")
    
    //MARK: Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        setVisualElements()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setVisualElements() {
        setTitle()
        setEmail()
        setPassword()
        setButtonLogin()
        setButtonRegister()
    }
    
    private func setTitle() {
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24)
        ])
    }
    
    private func setEmail() {

        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 12),
            emailTextField.leftAnchor.constraint(equalTo: emailLabel.leftAnchor),
            emailTextField.rightAnchor.constraint(equalTo: emailLabel.rightAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setPassword() {

        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            passwordLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 12),
            passwordTextField.leftAnchor.constraint(equalTo: passwordLabel.leftAnchor),
            passwordTextField.rightAnchor.constraint(equalTo: passwordLabel.rightAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setButtonLogin() {

        self.addSubview(buttonLogin)
        
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            buttonLogin.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            buttonLogin.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            buttonLogin.heightAnchor.constraint(equalToConstant: 40)
         
        ])
    }
    
    private func setButtonRegister() {

        self.addSubview(buttonRegister)
        
        NSLayoutConstraint.activate([
            buttonRegister.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 30),
            buttonRegister.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            buttonRegister.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            buttonRegister.heightAnchor.constraint(equalToConstant: 40)
         
        ])
    }
}
