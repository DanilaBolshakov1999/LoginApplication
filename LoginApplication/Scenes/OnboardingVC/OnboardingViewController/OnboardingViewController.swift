//
//  Onboarding ViewController.swift
//  LoginApplication
//
//  Created by Danila Bolshakov on 23.11.2023.
//

import UIKit

//struct ViewModel {
//    let title: String
//}
//
//protocol PresenterDelegate: AnyObject {
//    func render(viewModel: ViewModel)
//}

final class OnboardingViewController: UIViewController {
    
    //MARK: - UI
    private lazy var customInputView = CustomInputView()

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .white
    }
}

extension OnboardingViewController {
    private func setupViews() {
        view.addAutoLayoutSubviews(customInputView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            customInputView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            customInputView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            customInputView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            customInputView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}

extension OnboardingViewController: PresenterDelegate {
    func render(viewModel: ViewModel) { }
}
