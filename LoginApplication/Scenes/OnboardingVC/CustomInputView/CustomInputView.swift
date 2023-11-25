//
//  CustomInputView.swift
//  LoginApplication
//
//  Created by Danila Bolshakov on 23.11.2023.
//

import UIKit

protocol InputViewProtocol: UIView {
    func tappedButton()
}

final class CustomInputView: UIView {
    
    //MARK: - UI
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Welcome!"
        label.font = UIFont(name: "Arial", size: 24.0)
        label.textAlignment = .center
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemRed
        label.text = "Welcome!"
        label.font = UIFont(name: "Arial", size: 20.0)
        label.textAlignment = .center
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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

extension CustomInputView {
    
    private func setupViews() {
        addSubviews(mainLabel, secondLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            mainLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            secondLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 20),
            secondLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            secondLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
}

extension CustomInputView: InputViewProtocol {
    func tappedButton() { }
}
