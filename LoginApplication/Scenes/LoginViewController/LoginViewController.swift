//
//  ViewController.swift
//  LoginApplication
//
//  Created by Danila Bolshakov on 22.11.2023.
//

import UIKit

struct ViewModel {
    let title: String
}

protocol PresenterDelegate: AnyObject {
    func render(viewModel: ViewModel)
}

final class LoginViewController: UIViewController {
    
    //MARK: - UI
    private lazy var customLoginView = CustomLoginView()

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .systemBlue
    }
}

extension LoginViewController {
    private func setupViews() {
        view.addAutoLayoutSubviews(customLoginView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            customLoginView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            customLoginView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            customLoginView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            customLoginView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}

extension LoginViewController: PresenterDelegate {
    func render(viewModel: ViewModel) { }
}
