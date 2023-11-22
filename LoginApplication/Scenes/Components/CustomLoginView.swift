//
//  CustomLoginView.swift
//  LoginApplication
//
//  Created by Danila Bolshakov on 22.11.2023.
//

import UIKit

protocol ViewProtocol: UIView {
    var loginButton: UIButton { get }
}

final class CustomLoginView: UIView {
    
    //MARK: - UI
    private lazy var loginTextField: UITextField = {
        let field = UITextField()
        field.borderStyle = .roundedRect
        field.layer.cornerRadius = 10.0
        field.clipsToBounds = true
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    private lazy var passwordTextField: UITextField = {
        let field = UITextField()
        field.borderStyle = .roundedRect
        field.layer.cornerRadius = 10.0
        field.clipsToBounds = true
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    internal lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor.red
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 10.0
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomLoginView {
    
    private func setupViews() {
        addSubviews(loginTextField, passwordTextField, loginButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            loginTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            loginTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            loginButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 60),
            loginButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60),
        ])
    }
}

extension CustomLoginView: ViewProtocol { }
