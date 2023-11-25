//
//  Presenter.swift
//  LoginApplication
//
//  Created by Danila Bolshakov on 22.11.2023.
//

import UIKit

//MARK: - PresenterProtocol
protocol PresenterProtocol: AnyObject {
    func viewDidLoad()
    func didTapLogin()
}

final class LoginPresenter: PresenterProtocol {

    weak var delegate: PresenterProtocol?
    
    func viewDidLoad() { }
    func didTapLogin() {
        delegate?.didTapLogin()
    }
}
